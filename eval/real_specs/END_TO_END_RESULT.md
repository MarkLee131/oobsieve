# End-to-end result: patch-derived spec -> neuro-symbolic detection -> real bug

Goal: use the method on a REAL C project — generate a spec, detect a vulnerability,
check if it is real. No SEAL ground truth; no comparison to SEAL.

## Chain
1. **Spec generation (symbolic, SEAL).** From a function-pointer-interface patch
   (codec-dispatch demo: an impl that added a bounds check before `memcpy(dst, buf, len)`),
   SEAL's `-infer-patch-spec` produced the value-flow spec:
   *"Src Must Not Reach Sink: an interface argument's length field must not reach a
   memcpy size argument unguarded."* (4 specs total; the key one is the memcpy-size one.)
   Recipe discovered: SEAL emits a spec iff the patched fn is an indirect-call
   (function-pointer) interface impl AND the tainted value flows to a call-site sink
   (memcpy/deref). This is why earlier plain-helper/loop-condition patches crashed it.

2. **Refine (neural, Gemini).** The neuro layer generalizes the spec to a checkable
   property: an input-derived size must be bounds-checked before a memory op.

3. **Detect (neuro-symbolic).** `eval/detect_real.py` locates candidate sink sites
   (memcpy/memmove/…) in real code (symbolic) and asks Gemini, per site and constrained
   by the spec, whether the size is input-derived and unguarded (neural). SEAL's own
   detect mode was not usable (missing call-graph/peer front-end in the public image),
   so detection runs directly on the refined spec — this needs no SEAL ground truth.

## Target & finding
- **Project:** libarchive **v3.1.2** (2013), file `archive_read_support_format_rar.c`.
- **Flagged:** line **1304**, `memcpy(unp_size + 4, p, 4);` (high unpack size, `FHD_LARGE`
  branch) — **high severity out-of-bounds read**.
- **Gemini's reasoning:** `p` points into an `__archive_read_ahead(header_size - 7)` buffer;
  `header_size` is input-derived. At the memcpy `p = h + 36`, so it needs `header_size >= 47`,
  but the only check is `header_size < 39` — insufficient (allows 39–46) -> OOB read.

## Verification: the bug is REAL (not a hallucination)
libarchive later fixed exactly this in commit **`99f74bd3` "Add several sanity checks for
a RAR header"**, which introduced `endp = p + header_size - 7;` and **`if (p + 8 > endp)`**
— the guard for the two 4-byte `p` reads in the `FHD_LARGE` branch (incl. line 1304).
Also `34338d6c "rar: Fix out ouf boundary access with large files"`. Confirmed real,
historically fixed.

## Assessment
- **Spec quality:** the SEAL-inferred value-flow spec is structurally correct
  (input-derived length -> memcpy size) and general enough to drive detection across
  a different codebase/interface than the one it was mined from.
- **Bug reality:** the single flagged site is a genuine, historically-confirmed OOB read.
  1 candidate reported out of 18 sites checked in the RAR reader (no obvious false positives
  surfaced in this run).

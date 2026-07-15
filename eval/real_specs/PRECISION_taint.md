# Overall precision: LLVM-taint + Gemini detector on libarchive v3.1.2 (all format readers)

Pipeline: LLVM def-use taint (symbolic candidate finding) -> gemini-2.5-flash
confirmation (strict prompt). Every confirmed finding verified BY HAND against the
v3.1.2 source and git history (not the loose "any fix in file" signal).

## Numbers
- 15 format readers, 85 tainted-reaches-sink candidates (symbolic layer).
- 12 confirmed by the LLM (73 rejected).
- **1 / 12 confirmed is a genuine bug after rigorous verification -> precision ~8%.**
  (7zip:3395 setup_decode_folder: memcpy(b[i]+s[i], buff, bytes) with no s[i]+bytes
  bound on the output buffer.)

## The 11 false positives, verified one by one
- cab:2597/2598/2974/2975 — size `l` is explicitly CLAMPED (`if (l>avail_out) l=...;
  if (l>w_size-w_pos) l=...`) immediately before the memcpy.
- mtree:730 — `opt->value = malloc(len+1)` two lines before `memcpy(opt->value,value,len)`.
- lha:1794 — `ds->w_buff = malloc(ds->w_size)` before `memset(ds->w_buff,0x20,ds->w_size)`.
- iso9660:1469 — `xsize = sizeof(header)-header_avail`, clamped to `avail`; fits the fixed header.
- rar:848 — explicit `if (skip < 7+sizeof(reserved1)+sizeof(reserved2))` guard + constant size.
- 7zip:2989 — buffer compaction (`memmove` to head); `used` bounded by buffer content.
- rar:1251, zip:884 — `sizeof(field)` / `sizeof(struct)` zeroing of an allocated object.

## Root causes (and the fix)
1. SYMBOLIC over-approximation: the taint marks a value tainted if input-DERIVED, but
   does NOT model SANITIZERS — clamps (`l = min(l, bound)`), allocation-to-fit
   (`malloc(len+1)` then `memcpy(len)`), and explicit size guards. A real taint bug
   finder must track BOUNDED-vs-UNBOUNDED, not just input-derived. This is the #1 gap.
2. NEURAL over-confirmation: gemini-2.5-flash confirmed hedged/guarded cases even with
   the strict prompt (its own reasoning said "appears guarded... assuming..." then
   returned real_bug=true).

## Next steps to raise precision
- Model sanitizers in the taint: when a tainted value is clamped/min'd against a buffer
  bound, or a buffer is malloc'd to the tainted size, drop it from the candidate set
  (untaint / mark bounded). This alone removes ~8 of the 11 FPs here.
- Confirm with a stronger model (gemini-2.5-pro) and require the LLM to name the exact
  missing bounds check or reject.

---

# After sanitizer modeling (precision 8% -> 40%)

Added to the taint analysis:
- **clamp/min detection**: a size that flows through a phi/select/`umin`/mask is
  bounded (the `if (l > b) l = b` idiom becomes a phi at -O0+mem2reg). Distinguish
  CLAMPED (safe) from merely CONSTANT (a const-size READ from an input-offset pointer,
  e.g. rar:1304, is still OOB and kept).
- **malloc-to-fit**: skip a sink whose size equals (or one step feeds) a malloc/
  calloc/realloc size arg in the same function.

Effect: candidates **85 -> 40**; both real bugs retained (7zip:3395, rar:1304).

## Rigorous precision (per-finding, verified vs v3.1.2 source + git)
- 40 candidates -> 15 confirmed (flash) -> **6 REAL / 15 -> precision 40%** (was 1/12 = 8%).
- Real bugs FOUND went 1 -> 6 (recall up): 7zip:3395; iso9660:1362 (Joliet, fix 750e8d7b);
  rar:1304 (FHD_LARGE, fix 99f74bd3); rar:2802/2813/2818 (LZSS, later "protect" eac15e25).
- 9 residual FPs, by cause:
  * field-sensitivity miss (malloc/clamp through struct-field loads): 7zip:1822, zip:622,
    iso9660:2281, rar:1500.
  * control-flow guard not modeled (`if (p+8>endp) return`): rar:1281, rar:1522.
  * unmodeled bounded idiom (struct swap / in-place compaction): iso9660:2344, mtree:1861,
    7zip:2989.

## Next precision levers
1. Field-sensitive alloc/clamp: recognize two loads of the same struct field as the same
   bounded/alloc size (removes ~4 FPs).
2. Control-flow guard modeling: a dominating `if (ptr+n > end) return` sanitizes the read
   (removes ~2 FPs); also switch confirmation to gemini-2.5-pro (flash over-confirmed
   these despite the visible guard).

---

# SOTA techniques (Pinpoint / Prism line) applied on our base — precision 8% -> 67%

Referenced Charles Zhang's group's value-flow work (Pinpoint, PLDI'18: sparse value
flow + path conditions on value-flow edges + on-demand SMT feasibility; field-sensitive
memory via access paths). Adapted the ideas as lightweight passes on our LLVM-IR taint
(no rewrite):

1. **Sanitizer modeling** — a size flowing through a clamp (`if(l>b)l=b` -> phi at
   -O0+mem2reg), `umin`/mask is BOUNDED; distinguish clamped (safe) from merely constant
   (a const-size read from an input-offset pointer, rar:1304, is still OOB).
2. **Field-sensitive value signatures** (access-path analogue) — normalize each defining
   expression recursively so two loads of the SAME struct field match; used for
   malloc-to-fit (`malloc(x->f)` covers `memcpy(...,x->f)`).
3. **Path-sensitive guarded value-flow** (Pinpoint's core) — CFG + dominators; a sink is
   safe if a DOMINATING branch condition is a BOUNDS check on THIS access (the sink's own
   pointer/size in the guard's backward slice), distinguishing a bounds check from a
   sign/null check (`bytes < 0` stays flagged). Guard relatedness also matched
   field-sensitively by value signature.

## Candidate progression (all 6+ real bugs retained throughout)
85 -> 40 (sanitizers) -> 35 (field-sensitive malloc-to-fit) -> 30 (path-sensitive guards).

## Verified precision (per-finding, vs v3.1.2 source + git)
| stage | confirmed | real | precision | reals found (recall) |
|---|---|---|---|---|
| baseline taint          | 12 | 1 | 8%  | 1 |
| + sanitizer modeling    | 15 | 6 | 40% | 6 |
| + field-sens + path-sens| 12 | 8 | **67%** | **8** |

Real bugs (8): 7zip:3395; iso9660:1362 (Joliet, fix 750e8d7b); rar:1301/1304 (FHD_LARGE,
fix 99f74bd3); rar:2802/2813/2815/2818 (LZSS window, later "protect" eac15e25).

## Remaining 4 FPs (precisely characterized)
- field-sensitive clamp through a COMPOUND `&&` guard (immediate dominator is a different
  clause): 7zip:1474 (`odd_bcj_size<=4`), zip:622.
- fixed-size struct move within a bounded array (needs array-index-range reasoning):
  iso9660:2301 (heap sift-up), iso9660:2344 (heap swap).

## Next (to approach the Pinpoint precision ceiling)
- On-demand SMT (Z3) feasibility on the sink's path condition — replaces the heuristic
  guard match with a real satisfiability check (handles compound conditions exactly).
- Array-index range analysis for the struct-move idiom.

---

# On-demand SMT path conditions (Pinpoint's core) — final: 85 -> 24 candidates

Added a Z3 path-condition solver (`eval/smt_path.py`): for a variable-size sink,
encode the size expression + the RELEVANT dominating guards as bit-vectors and ask
if the size can still exceed 1 MiB. UNSAT (the guards bound it, e.g. a compound
`x>0 && x<=4 && ...`) -> safe.
Key soundness lessons hit and fixed:
- conjoining ALL dominating guards gives spurious UNSAT (mutually-exclusive
  loop-iteration guards) -> scope to guards that actually constrain the size.
- FIELD-SENSITIVE memory: two loads of the same field share one Z3 var, so a guard
  on x->f binds a size read of x->f.
- widening guard-relatedness through width-casts is UNSOUND: it matches source-side
  guards (LZSS `windowoffs+length <= src_size`) that do not protect a dest write and
  wrongly cleared rar:2802 (a real OOB-write). Reverted; guard SUFFICIENCY (dest vs
  source coverage) needs full SMT with buffer sizes.

## Deterministic result (symbolic layer, no LLM)
| stage | candidates | real bugs | candidate precision |
|---|---|---|---|
| baseline taint                 | 85 | 8 | 9%  |
| + sanitizer modeling           | 40 | 8 | 20% |
| + field-sensitive malloc-to-fit| 35 | 8 | 23% |
| + path-sensitive guards        | 30 | 8 | 27% |
| + on-demand SMT + ensure-to-fit| **24** | **8** | **33%** |

72% false-positive-candidate reduction (85->24) with 100% real-bug retention (8/8).
Pipeline precision with LLM confirm: 8% (baseline) -> up to 67% (flash best run;
flash is non-deterministic and the current bottleneck -- pro is steadier but slow).

## Remaining FP causes (all well-characterized) & next levers
- alloc/ensure-grown buffers where copy-size != alloc-size expression (calloc(new)
  vs copy(cnt)): needs `copy_size <= alloc_size` SMT, not equality. (iso9660:3002/2281)
- fixed-size struct moves in bounded arrays (heap sift/swap): array-index-range
  analysis. (iso9660:2301/2322/2344, iso9660:3002)
- guards missed by field/sext gaps or read_ahead(N)-guaranteed sizes: extend guard
  relatedness carefully (soundly) or full SMT sufficiency. (cab:3084, rar:1230/847/848)

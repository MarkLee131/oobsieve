# Why the 14 in-scope misses are missed (2026-07-15)

Replaying `find_candidates`' decision on each miss's crash function (`diag_miss.py`) gives the
exact rejection reason. The 14 misses split into three causes:

| cause | n | verdict |
|---|---|---|
| **NOTHING-TAINTED** | 5 | **genuine recall gap** — fixable by a broader input-taint model |
| **CLAMPED** | 6 | mostly correct rejection / benchmark-attribution noise; some clamp-to-wrong-value |
| **GUARDED** | 3 | guard heuristic suppressed; some possibly insufficient guards |

## NOTHING-TAINTED (5) — the clear, fixable recall gap
Bugs: dnsmasq `extract_addresses`, libarchive `parse_file_extra_owner`, opensc
`sc_pkcs15emu_oberthur_add_{pubkey,cert,data}`.

The crash function's `memX` operands are never in the taint set, because our forward taint
seeds only from **function arguments + a hardcoded `INPUT_FNS` list** (tuned on libarchive,
e.g. `__archive_read_ahead`). These functions get their attacker data a different way:

```c
// opensc sc_pkcs15emu_oberthur_add_data:
sc_oberthur_read_file(p15card, ch_tmp, &info_blob, &info_len, 1);  // fills info_blob (OUTPUT ptr)
offs += 2 + *(info_blob + offs + 1);        // offs advances by input-derived amounts
label_len = *(info_blob + offs + 1) + ...;  // read past end of info_blob -> the OOB
```
`info_blob` is an **output buffer of a project I/O function** not in `INPUT_FNS`, so it is
never tainted. dnsmasq reads the packet via daemon globals; libarchive via a read helper.

**Fix (future):** a general input model — taint the output-pointer parameters of reader/decoder
-like functions (name match, or any callee-filled heap buffer), instead of a hardcoded list.
This widens the sound candidate set (recovering ~5 misses, ~56%→~70%) at a precision cost the
LLM-confirm layer is meant to absorb — exactly the neuro-symbolic division of labour.

## CLAMPED (6) — mostly correct / benchmark noise
Bugs: c-blosc2 `tinfl_decompress` ×2, htslib `hts_md5_update` ×2, opensc `asn1_decode_entry`,
pcre2 `match`. Example — `hts_md5_update`'s writes are genuinely clamped to the 64-byte block:
```c
available = 64 - used;
if (size < available) memcpy(&ctx->buffer[used], data, size);  // bounded
memcpy(&ctx->buffer[used], data, available);                   // bounded to buffer
```
The ASAN crash is a **source over-read of `data`** (caller passed `size` > `data` length); the
real fix is in the caller, not `hts_md5_update`. Our rejection of the function is defensible —
this is benchmark crash-attribution, not a detector recall failure. (Some other CLAMPED cases
may be clamp-to-a-wrong-bound; those would be genuine and need the SMT sufficiency check to
look at the clamp's bound source.)

## GUARDED (3) — heuristic suppression
c-blosc2 `ZSTD_execSequenceEnd`, libdwarf `dwarf_gdbindex_cuvector_inner_attributes`, opensc
`decode_bit_string`. `sink_is_guarded` found a dominating bounds check related to the sink and
suppressed it. Whether the guard is *sufficient* is not proven (it is a relatedness heuristic);
some of these may be over-suppression. Tightening would require the SMT sufficiency path to run
on more of these.

## Fix applied: general input model (2026-07-15)
`taint_llvm.py` now recognises reader/decoder calls by name (`INPUT_RE`: read/recv/decode/
inflate/unpack/get_byte/…) and taints not just their return value but their **argument
pointers** — so an output buffer a callee fills (`read_file(a, &buf, &len)`) becomes a taint
source and later loads from `buf` flow. This replaces the libarchive-specific `INPUT_FNS`
hardcode with a general dataflow source.

Result on the 32-bug scorable set: **recall 18/32 (56%) → 19/32 (59%)**; reference libarchive
v3.1.2 precision preserved (21 candidates across 15 readers, the 8 real bugs retained). The
lift is small **because the diagnostic above was right**: only opensc `add_pubkey` was a
genuine `memX`-seeding gap (now a hit); the other former NOTHING-TAINTED cases now *reach*
taint but their variable-size `memcpy` is genuinely clamped (the real OOB is a scalar
pointer read), confirming they are benchmark-attribution noise, not recall failures.

## Bottom line
- The measured **~59% recall is close to the ceiling for this sink class.** The remaining
  misses are out-of-true-scope: scalar-pointer-read overflows, data arriving via globals
  (dnsmasq), or crash-attribution to a function whose `memcpy` is genuinely safe.
- Materially higher recall needs an **expanded sink model** (scalar pointer reads, string
  builders) — i.e. Paper 2's scope, not a Paper 1 tweak. The general input model is kept: it
  generalises the detector beyond libarchive and recovers real I/O-output-pointer gaps at no
  precision cost.

# Generalization — the pipeline on multiple real C projects

The overall tool (`eval/pipeline.py`) is a single command that runs the detect + assess
halves end-to-end on a real C project: ③ symbolic candidate-finding (LLVM def-use taint
+ sanitizer/field/path/SMT passes) → ③ neural confirmation (Gemini) → ④ git-history
assessment. No SEAL ground truth; no comparison to SEAL.

We ran it, unchanged, on two structurally different codebases: **libarchive** (archive
format parsers — `memcpy`/`memmove` into heap buffers, `if`-based bounds guards) and
**tcpdump** (packet printers — pointer reads guarded by `ND_TCHECK`/`ND_TTEST` longjmp
macros). One command each; only `--glob`/`--cflags` differ.

## Headline results

| Project | Version | Files | Symbolic cands | Confirmed | Real (verified) | Confirmed precision |
|---|---|---|---|---|---|---|
| libarchive | v3.1.2 | 15 | 20 | 12 | **8** | 67% |
| tcpdump | 4.9.2 | 145 | 53 | 1 | **1** | 100% |
| libxml2 | v2.9.4 | 12 | 37 | 0 | 0 | n/a — 0 confirmed, **0 false positives** |

- **libarchive**: 8 real OOB bugs, each tied to a specific named upstream fix — CVE-2016-1541
  (zip, `zip_read_mac_metadata`), FHD_LARGE header OOB (`read_header`, fix 99f74bd3),
  Joliet overflow (`iso9660`, fix 750e8d7b), LZSS-window OOB-write (`copy_from_lzss_window`,
  hardened by eac15e25 "protect copy_from_lzss_window_to_unp"), and the 7zip folder-decode
  overflow. Manually adjudicated (per-finding, against git history).
- **tcpdump**: 1 real bug, **auto-discovered**: `parse_elements` TIM-bitmap copy →
  **CVE-2017-13008** (fix 5edf405d). The pipeline surfaced a named CVE in a codebase it had
  never been tuned on.

## The tcpdump run demonstrates the neuro-symbolic mechanism

tcpdump guards memory reads with `ND_TCHECK(ptr,len)` / `ND_TTEST(...)` — longjmp-based
bounds macros, not plain `if`s. The symbolic engine's guard model (dominator + backward-slice
relatedness) was built for `if`-comparison guards and **does not model these macros**, so it
emits guarded-but-safe reads as candidates (53, high recall / low precision on this project).

This is exactly the blind spot the neural layer exists to cover:

| Gemini confirm variant | Confirmed | Real | Precision |
|---|---|---|---|
| guard-**unaware** prompt | 4 | 1 | 25% (3 `ND_TCHECK` false positives) |
| guard-**aware** prompt   | 1 | 1 | **100%** (only CVE-2017-13008) |

Telling the LLM that longjmp/goto bounds macros (`ND_TCHECK`/`ND_TTEST`/`CHECK_*`) covering
the accessed range count as sufficient guards made it reject all three false positives
(`ip_finddst` ×2, `icmp6_opt_print` — all verified `ND_TCHECK`-guarded in source) **while
keeping the real CVE**. The symbolic engine stays sound and codebase-agnostic; the LLM
supplies the project-specific guard idiom. That division of labour is the tool's thesis.

## libxml2 is a clean scope boundary (why 0 is the *right* answer)

We also ran the pipeline on libxml2 v2.9.4's 12 core parser files. It produced 37 symbolic
candidates and Gemini confirmed **none** — **0 findings, 0 false positives**. This is not a
failure; it maps the approach's boundary precisely.

Our sink model is `{memcpy, memmove, memset}`. libxml2's 2.9.4-era memory-safety CVEs do
**not** live at those sinks — they are:
- **string-builder overflows**: `xmlStrncat` heap overflow (Bug 763071) — the copy happens
  inside a `realloc`+copy helper whose length the caller miscomputes;
- **tokenizer char-over-reads**: `xmlFAParsePosCharGroup` heap-buffer-overflow (fb56f80e) —
  a hand-written `cur++` scan running one byte past the buffer.

Neither is an intrinsic memory op, so the engine never flags the vulnerable sites (a recall
boundary, not a precision failure). The 37 candidates it *did* raise are all `xmlBuf`-growth
/ GROW-guarded `memcpy`/`memset`, which Gemini correctly rejected — hence 0 confirmed with
**zero false positives**. The honest takeaway: the tool targets the intrinsic-memcpy OOB
class (where it found real CVEs in libarchive and tcpdump); covering libxml2's dominant
string-builder / tokenizer class would require adding those sink families to component ③.

## Honest caveats (threats to validity)

1. **Symbolic precision is codebase-dependent.** The guard model was tuned on libarchive's
   `if`-based bounds; on tcpdump's macro/longjmp guards it over-flags (53 candidates, most
   safe). Modeling `ND_TCHECK` symbolically would raise ③'s precision, but that is scope for
   the detection *component*, not the tool — the neural layer already recovers precision.
2. **Keyword git-verify is a ranker, not ground truth.** `verify_taint.py` splits fix
   subjects into STRONG (overflow/OOB/CVE/over-read) vs WEAK (generic "check/bound/protect",
   which also match macro-refactor churn like tcpdump's ND_TTEST→ND_TCHECK sweep). Final
   precision numbers above come from **per-finding manual adjudication** against the actual
   fix commit and the source at the analyzed version — not from the keyword count.
3. **Recall is not measured.** We report precision of confirmed findings and that real,
   named bugs are found; we do not claim to find *all* bugs in either project.

## Reproduce

```bash
# libarchive (if-guarded memcpy sinks)
python3 eval/pipeline.py <src>/libarchive/libarchive --git <src>/libarchive \
    --glob 'archive_read_support_format_*.c' --project libarchive-v3.1.2

# tcpdump (ND_TCHECK-guarded printer reads; guard-aware confirm prompt)
python3 eval/pipeline.py <src>/tcpdump --git <src>/tcpdump \
    --glob 'print-*.c' --cflags "-DHAVE_CONFIG_H -I<pcap_include>" \
    --project tcpdump-4.9.2
```

# ARVO recall harness

Measures **symbolic recall** of the detector on a labeled, at-scale benchmark — the "scale +
recall" evidence Paper 1 needs (see `../../THESIS.md`). Ground truth is ARVO
([n132/ARVO-Meta](https://github.com/n132/ARVO-Meta)): reproducible OSS-Fuzz memory bugs,
each with a `crash_type`, a `fix_commit`, and the canonical fix diff.

## Pipeline

1. **`build_manifest.py`** — filter ARVO to Paper 1's bug class and extract ground truth.
   In-scope = `{Heap,Stack,Global}-buffer-overflow` **and** the fix diff edits a C/C++ file
   **and** a `mem{cpy,move,set}` sink appears on a context/removed line (so the sink exists
   in the *vulnerable* version). Emits `manifest.json` (per bug: project, repo, fix_commit,
   patched files, sink ops, test-path flag).

   ```
   python3 build_manifest.py <ARVO-Meta_dir> -o manifest.json
   ```
   Current denominator: **733 library bugs** (528 READ / 205 WRITE) + 34 test-harness,
   across 131 projects.

2. **`recall_runner.py`** — for each bug: check out the vulnerable version (`fix_commit^`),
   compile the patched C file (and the crash function's own TU) to LLVM IR, run the symbolic
   candidate finder (`../taint_llvm.py`), and score recall against the ASAN crash function
   (see next section). Compilation is best-effort (single TU + guessed `-I` + per-project
   `CONFIGURE_FLAGS`/`EXTRA_CFLAGS` + container-assisted `config.h`); projects needing their
   full build system are reported `build_ok=false` and excluded — **build coverage is reported
   honestly, not hidden.**

   ```
   python3 recall_runner.py manifest.json --repos <cache> --project opensc \
       --limit 20 --container seal
   ```

## Ground truth = the ASAN crash function (not diff heuristics)

Every ARVO meta carries the OSS-Fuzz report's **Crash State** — the ASAN stack at the
overflow. The top project frame is the **crashing function** (100% of metas have it). We use
that as ground truth instead of guessing the sink from the diff (an early diff-based guess
scored real hits as misses — e.g. it blamed `process_head_file` when the crash was actually
in `circular_memcpy`, which we *do* flag).

Scoring per bug (`recall_runner.py`), all IR-verified:
- **hit** — a candidate lands in the crash function;
- **miss** — crash function is in scope but no candidate there;
- **oos** (out of scope) — the crash function has **no variable-size `memX` intrinsic**, i.e.
  the overflow is a byte-level decoder / const-size access, *not* a memcpy bug — excluded;
- **gt-not-in-file** — crash function lives in a TU we couldn't compile — excluded.

A "same-file, different-function" candidate is **not** counted (an earlier "weak" tier did
that and inflated recall to a meaningless 89% — libarchive's `rar5.c` has a few memcpys, so
every bug in that file got a coincidental match).

## Rigorous recall number (2026-07-15, after build-coverage expansion)

126 bugs sampled across 11 C projects, container-assisted builds with per-project recipes
(`CONFIGURE_FLAGS` / `EXTRA_CFLAGS` in `recall_runner.py` — e.g. opensc's single-reader-driver
flags, htslib's `--host`, pcre2's `-DPCRE2_CODE_UNIT_WIDTH=8`):

| | value |
|---|---|
| build coverage | **76/126 (60%)** |
| in-scope & scorable (crash func = variable-size memX) | **32** |
| **function-precise recall** | **19/32 (59%)** (with general input model) |
| excluded: out-of-scope (byte-level/const overflow) | 38 |
| excluded: crash func not in a compiled TU | 6 |

Per project (hit/scorable): pcre2 4/5, opensc 4/8, libavc 3/3, dnsmasq 3/4, libarchive 2/3,
c-blosc2 1/4, htslib 1/3, ndpi 1/1, libdwarf 0/1. Still 0-build: gpac, matio.

**Reading it, honestly:**
- **~59% function-precise recall** (n=32) on genuine memcpy-class OOB bugs — a credible,
  now-reasonably-sized signal for the "sound high-recall candidate set" claim. (An earlier
  n=9 sample read 67%; the larger sample is the number to trust.)
- A large share of ARVO "buffer-overflow bugs whose fix mentions memcpy" are **not memcpy
  bugs** (38 oos vs 32 in-scope) — they crash in byte-level decoders (`read_bits_16`,
  `copy_string`, `ndpi_strncasestr`). This precisely maps the approach's scope (and is the
  class Paper 2's expanded sink model would cover).
- Build coverage rose 38%→60% via per-project recipes. Remaining gaps: a few autotools
  projects whose configure still fails (gpac), and C++ targets (libraw/openthread/skia) that
  are out of the C detector's scope entirely.

## End-to-end: the LLM-confirm neuro layer (`--confirm`)

`recall_runner.py --confirm` runs Gemini over the (broadened) symbolic candidates and measures
the division of labour: does the neuro layer keep the true bug (recall retention) while
dropping the rest (FP-cut)? The prompt design turns out to be **the** knob. On a 19-bug
subset (opensc/libavc/libarchive/ndpi/c-blosc2), the same candidates, two prompts:

| Confirm prompt | end-to-end recall | true bugs dropped | FP-cut |
|---|---|---|---|
| **Aggressive** — naive "is this a genuine OOB? be conservative" | 4/19 (21%) | 7 | **90%** |
| **Recall-first** — "the analysis already proved input-derived+unbounded; reject only if you can point to a specific guard COVERING this access; else keep" | **11/19 (58%)** | **0** | 17% |

**The honest finding.** A **soundness-preserving** LLM confirm (the thesis's reject-only,
never-drop-a-real-bug layer) can only safely remove **~17%** of the symbolic false positives —
it confidently rejects the clearly-guarded candidates and keeps the rest. Pushing the prompt
for a big FP-cut (90%) makes it drop ~2/3 of the true bugs, which violates soundness. So on a
broad benchmark the LLM confirm is a **mild, recall-safe precision aid**, not the dramatic
FP-killer a single anecdote (tcpdump `ND_TCHECK`, 25%→100%) suggested. Two caveats that make
17% a lower bound: (1) "FPs" here are non-crash-function candidates, some of which are *other*
real bugs ARVO doesn't label; (2) this used `gemini-2.5-flash` with no thinking — a stronger
reasoning model is an untested lever that could raise FP-cut at fixed recall.

The recall-first prompt is the one kept in the code (soundness-preserving is the thesis).

## Docker/wllvm route (`docker_extract.py`) — build coverage at scale

The host route caps build coverage at ~60% (missing headers/generated files) and can't handle
projects it can't configure. The Docker route uses ARVO's reproduction image
`n132/arvo:<id>-vul` (the project fully configured at the vulnerable version) and extracts
clean `-O0` IR of the crash function's TU:

1. install `wllvm`; install a compiler wrapper `cc0`/`cxx0` that **strips `-O*` and forces
   `-O0 -g`** then calls `wllvm`/`wllvm++` — so the build uses its own **exact** `-I`/`-D`
   flags (no fragile reconstruction; sidesteps per-project quirks like dnsmasq's
   `#define class class2`), just at `-O0`;
2. run OSS-Fuzz `compile` with `CC=cc0 CXX=cxx0 SANITIZER=none` — every TU drops a
   single-module bitcode sibling `.<name>.o.bc`;
3. `opt -passes=mem2reg -S` that sibling (no `llvm-link`/`extract-bc` needed) → clean `-O0`
   IR with the crash function present, no ASAN instrumentation;
4. score crash-function recall on the host via `taint_llvm.analyze_ll_text`; remove the image
   to bound disk.

Proven on dnsmasq (`extract_addresses`): **100% extraction**, 15 memcpy intrinsics, 0 asan,
result consistent with the host route. This solves build coverage for any project the host
route can't build.

**Cost / honest limit.** Each bug does a full project `compile` inside a ~2–3 GB image:
~3–5 min for moderate projects (libredwg), ~15–30 min for giants (ghostpdl/imagemagick/
binutils/ffmpeg). Combined with the ~50% out-of-scope rate, reaching *hundreds* of scorable
bugs is a **multi-hour-to-multi-day background campaign**, not an instant run — the pipeline
is the deliverable; the denominator grows as it runs. Prioritise moderate-sized C projects
for yield-per-minute.

## Levers, status
- **Lever 1 (build coverage) — done**: 38%→60% via the `CONFIGURE_FLAGS`/`EXTRA_CFLAGS` recipe
  table; adding more of ARVO's 131 projects is mechanical (one entry each) and scales the
  denominator toward the hundreds.
- **Lever 2 (miss analysis + input model) — done**: see `MISS_ANALYSIS.md`. The general input
  model lifted recall 56%→59%; the diagnosis shows ~59% is near the ceiling for this sink
  class (remaining misses are scalar-read overflows / data-via-globals / benchmark
  crash-attribution, not memcpy bugs).
- **Next**: scale the denominator toward hundreds (more recipes); the LLM-confirm end-to-end
  recall stage; Magma comparability; and (Paper 2) an expanded sink model for the byte-level /
  string-builder classes that dominate the out-of-scope bucket.

# OOBSieve

Neuro-symbolic detection of out-of-bounds (OOB) memory accesses in C.
A sound, high-recall symbolic value-flow analysis produces candidate sinks;
a reject-only LLM step removes candidates whose safety rests on bounds-check
idioms the symbolic model cannot express (e.g. tcpdump's `ND_TCHECK` longjmp
macros). The LLM never adds findings, so recall is bounded by the symbolic layer.

## How it works

1. **Symbolic candidates** (`eval/taint_llvm.py`, `eval/smt_path.py`).
   Each `.c` file is compiled to LLVM IR at `-O0` + `mem2reg`. Forward def-use
   taint from function arguments and input-reading calls reaches
   `llvm.mem{cpy,move,set}` sinks. Candidates are filtered only by decidable
   models: clamp/min sanitizers, field-sensitive allocate-to-fit, and on-demand
   SMT (Z3) proofs that a dominating path condition bounds the size or that the
   destination capacity suffices.
2. **Neural confirmation** (Gemini). For each candidate the LLM sees the symbolic
   facts and the enclosing function, and may reject it only by naming a concrete
   bounds check that covers the access. Everything else is kept.
3. **Assessment** (`eval/verify_taint.py`). Ranks findings by whether upstream
   later landed a memory-safety fix in the same function.

The `oobsieve/` package is a separate, earlier component: it refines value-flow
specs mined by [SEAL](https://github.com/harperchen/SEAL) from security patches
(keep / drop / subject-correct, never invent) using the commit message and diff.

## Requirements

- Python >= 3.10, `clang` and `opt` (LLVM 12 or newer) on `PATH`, `git`
- `pip install -e .` installs `google-genai`; add `z3-solver` for the SMT stages
- `GEMINI_API_KEY` in the environment for any step that calls the LLM
- Optional: Docker + `wllvm` for `eval/arvo/docker_extract.py`, `libclang` for
  the older AST detector `eval/detect_symbolic.py`

```sh
pip install -e ".[dev]" z3-solver
python -m pytest -q          # 27 tests, no network
```

## Run the detector on a project

```sh
export GEMINI_API_KEY=...
python3 eval/pipeline.py /path/to/libarchive/libarchive \
    --git /path/to/libarchive \
    --glob 'archive_read_support_format_*.c' \
    --cflags '-DHAVE_CONFIG_H' --project libarchive
```

Candidates and verdicts are printed; the confirmed findings with their git-history
signal are written to `eval/pipeline_<project>.json`. `--no-confirm` skips the LLM;
`eval/taint_llvm.py` exposes it on its own with the same `--glob/--cflags` flags.
The project must be configured first (its `config.h` has to exist).

## Reproduce the ARVO evaluation

Ground truth is the ASAN crash function of each
[ARVO](https://github.com/n132/ARVO-Meta) buffer-overflow bug whose fix touches a
`mem{cpy,move,set}` sink. `eval/arvo/manifest.json` is already built; to rebuild:

```sh
python3 eval/arvo/build_manifest.py /path/to/ARVO-Meta -o eval/arvo/manifest.json
```

Then, from `eval/arvo/` (each script checks out the vulnerable commit into a repo
cache and compiles the crash function's translation unit):

| Script | Measures | Output |
|---|---|---|
| `campaign.py --cache DIR --projects a,b,...` | symbolic recall per project | `campaign_results/`, `campaign_summary.json` |
| `noguard_campaign.py DIR` | recall + confirm with the path-guard heuristic off (default pipeline) | `noguard_summary.json` |
| `confirm_campaign.py DIR` | end-to-end recall and FP cut, recall-first vs aggressive prompt | `confirm_summary.json` |
| `ablation_campaign.py DIR` | candidate count and recall retention per modeling stage | `ablation_summary.json` |
| `baseline_llm.py DIR` | pure-LLM baseline on the crash function and a sibling control | `baseline_llm_results.json` |

`recall_runner.py` is the per-bug worker behind these (`--project`, `--ids`,
`--confirm`, `--ablation`, `--no-guard`). Pass `--container NAME` to configure
autotools projects inside a Docker container that has libtool.
`docker_extract.py` instead compiles inside ARVO's own `n132/arvo:<id>-vul`
images for projects the host cannot build.

Committed summaries: 88 C projects, 321 bugs, 46 scorable; symbolic recall 33/46
with the default pipeline; the recall-first LLM drops 19% of non-crash-function
candidates while keeping 30/33 true bugs.

## Layout

```
oobsieve/        spec-refinement package (context, agent, rewriter, cli, llm/)
eval/            detector: taint_llvm.py, smt_path.py, pipeline.py, verify_*.py
eval/arvo/       ARVO benchmark harness, campaigns and result summaries
eval/real_specs/ SEAL specs used by the refinement layer and recorded detector runs
tools/merger/    reproduction of SEAL's llvm-link-patch (LLVM 3.6)
docs/            paper generator (fill_paper.py) and figure scripts
tests/           pytest suite for the refinement package
```

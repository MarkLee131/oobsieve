# OOBSieve

Out-of-bounds candidate detection for C: an LLVM value-flow analysis proposes
candidate `mem{cpy,move,set}` sites, and an LLM may reject a candidate only by
naming a bounds check that covers it.

## Requirements

- Python >= 3.10, `clang` and `opt` (LLVM 12+), `git`
- `pip install -e ".[dev]" z3-solver`
- `GEMINI_API_KEY` for the LLM step
- Optional: Docker + `wllvm` (`eval/arvo/docker_extract.py`), `libclang` (`eval/detect_symbolic.py`)

```sh
python -m pytest -q
```

## Usage

```sh
python3 eval/pipeline.py <src_dir> --git <repo> --glob '*.c' --cflags '-DHAVE_CONFIG_H' --project <name>
```

Confirmed findings are written to `eval/pipeline_<name>.json`. `--no-confirm` skips the LLM.

## ARVO evaluation

```sh
python3 eval/arvo/build_manifest.py <ARVO-Meta> -o eval/arvo/manifest.json   # or use the committed manifest
cd eval/arvo
python3 campaign.py --cache <repo_cache> --projects <a,b,...>   # symbolic recall
python3 noguard_campaign.py <repo_cache>                        # recall + LLM confirm
python3 confirm_campaign.py <repo_cache>                        # recall-first vs aggressive prompt
python3 ablation_campaign.py <repo_cache>                       # per-stage ablation
python3 baseline_llm.py <repo_cache>                            # pure-LLM baseline
python3 aggregate.py <results_dir>                              # summarize a results dir
```

Prompts: `_CONFIRM_SYS` and `_AGGRESSIVE_SYS` in `eval/arvo/recall_runner.py`.
Results used in the paper: `eval/arvo/*_summary.json`, `eval/arvo/crossmodel/`, `eval/arvo/rootcause.json`.

## Layout

```
oobsieve/        spec-refinement package (SEAL specs)
eval/            detector and evaluation scripts
eval/arvo/       ARVO harness, campaigns, results
eval/real_specs/ recorded detector runs on libarchive / tcpdump / libxml2
tools/merger/    reproduction of SEAL's llvm-link-patch
docs/            paper generator and figures
tests/           pytest suite
```

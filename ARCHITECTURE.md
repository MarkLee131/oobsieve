# PatchIntent — overall tool architecture

**Goal.** Take a real C project, derive value-flow specifications from its security
patches, and detect vulnerabilities — assessing spec quality and whether findings are
real bugs. Neuro-symbolic: symbolic value-flow provides rigor and grounding; an LLM
provides intent understanding and semantic judgement. No dependency on SEAL's ground
truth; no comparison against SEAL.

## Pipeline (the main line)

```
  security patch
        │  ① SPEC GENERATION (symbolic)
        ▼
  value-flow spec  ──②──►  refined spec        ──③──►  candidate findings  ──④──►  bugs
  (source→sink +          (LLM intent: keep /          (symbolic detect +          (verified)
   condition/order)        drop / subject-correct)      neural confirm)
```

| # | Stage | Component | Role & status |
|---|---|---|---|
| ① | **Spec generation** | SEAL `-infer-patch-spec` (symbolic) + reproduced `llvm-link-patch` merger (`tools/merger/`) | Mines a value-flow property from a patch diff. Works when the patched fn is a function-pointer interface impl and the tainted value reaches a sensitive-API sink. Symbolic grounding. |
| ② | **Neuro refinement** (Layer-1, the paper's contribution) | `patchintent/` package (`context`,`agent`,`rewriter`,`cli`), Gemini | Reads commit intent + diff + code; corrects the spec subject / drops spurious specs (keep/drop/subject-correct), never inventing specs. **27/27 tests; validated live on real SEAL specs** (e.g. corrected an ismt spec's source subject). |
| ③ | **Detection** | `eval/taint_llvm.py` + `eval/smt_path.py` (symbolic candidate-finder) + Gemini confirm | LLVM def-use taint → sanitizer/clamp modeling → field-sensitive memory → path-sensitive guards → on-demand SMT (size bound + buffer-capacity sufficiency). High-recall, sound pre-filter; Gemini confirms. **This is a COMPONENT, not the whole tool** (see `real_specs/PRECISION_taint.md`). |
| ④ | **Assessment** | git-history verification (`eval/verify_taint.py`) + manual | Confirms findings are genuine, historically-fixed bugs. |

## What is proven end-to-end (on real libarchive v3.1.2)
- Spec generation runs in the SEAL Docker; the reproduced merger builds patch bitcode.
- The neuro layer refines real specs with Gemini (keep/drop/subject-correct + rationale).
- Detection (the symbolic engine + Gemini) finds and git-verifies **real OOB bugs**
  (7zip folder-decode overflow, RAR FHD_LARGE header OOB, RAR LZSS window OOB-write,
  iso9660 Joliet overflow) — all with matching upstream fix commits.
- Detection engine progression: 85 → 20 candidate FPs (76% cut), 8/8 real bugs retained,
  candidate precision 9% → 40%; sound throughout.

## Scope discipline
Component ③ (the LLVM taint/SMT analysis) is intentionally a *good-enough, sound,
high-recall* symbolic pre-filter — NOT a complete standalone detector. The neural
confirm and the human-verifiable spec are what make the tool neuro-symbolic. Effort on
③ stops once it serves the pipeline's goal.

## Known constraints
- SEAL's `-detect-patch-bug` mode is broken in the public Clearblue image (closed-source
  framework); we detect with our own engine instead — which is why ③ exists.
- Spec generation via SEAL needs the right patch shape; the neuro layer + our detector
  do not depend on SEAL for detection.

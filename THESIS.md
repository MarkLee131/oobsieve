# OOBSieve — locked thesis & evaluation plan

Locked 2026-07-15 after benchmark research + scoping decisions. This supersedes the
earlier split framing; `ARCHITECTURE.md` describes the pipeline, this file fixes the
paper's single claim and how it is evaluated.

## The single thesis (claim of the paper)

> A **sound symbolic value-flow analysis** emits a high-recall, over-approximate set of
> memory-safety candidates — an input-derived value reaching an **intrinsic memory
> operation** without a bounds guard the analysis can *model*. A **constrained,
> reject-only LLM** then removes the candidates whose safety depends on guard/idiom
> knowledge that lies **outside the symbolic model** (project-specific longjmp bounds
> macros, allocation-to-fit, capacity invariants), cutting false positives **without
> dropping true bugs**. The LLM is soundness-preserving: it may only reject symbolic
> candidates, never invent findings.

Division of labour is drawn **by decidability**: the symbolic engine owns what it can
soundly model (dominator/SMT-provable guards); the LLM owns the open-ended idiom space.

### Novelty vs "LLM triages static-analysis warnings" (the review battleground)
Prior work (LLM4SA, IRIS, etc.) bolts an LLM onto a linter's warning list. Our deltas:
1. The symbolic half is not a linter — it is **Pinpoint-style sound value-flow + on-demand
   SMT path conditions** (`eval/taint_llvm.py` + `eval/smt_path.py`), so the candidate set
   has a principled recall floor, not a heuristic warning stream.
2. The split is **principled by decidability**, not "ask the LLM about everything."
3. The LLM is **reject-only and auditable** — it cannot add findings, so soundness of the
   candidate set is preserved end-to-end. (This is SEAL Layer-1's "never invent" principle,
   carried from spec inference into detection — see below.)

Live evidence already in hand: tcpdump `ND_TCHECK` — the symbolic engine provably cannot
model the longjmp bounds macro, the LLM supplies that idiom, precision 25%→100% with the
real CVE-2017-13008 retained (`eval/real_specs/GENERALIZATION.md`).

## Two-paper roadmap (locked)

- **Paper 1 — current, Chinese.** Narrow scope (below). Thesis + ARVO-in-scope recall +
  the ND_TCHECK mechanism. This is what we are building now.
- **Paper 2 — next, English, top-conference volume.** Same thesis, **expanded sink model**:
  add string-builders (`xmlStrncat`/`xmlStrcat`/`xmlStrndup`-style realloc+copy helpers) and
  hand-written tokenizer char-over-reads (`cur++` past end / NEXT/CUR macros), covering a much
  larger slice of the real OOB population (this is exactly libxml2's bug class). Bigger claim,
  bigger recall denominator. **Do NOT pull this into Paper 1.**

## Scope of Paper 1 (locked): intrinsic memory-operation OOB class

Sinks = `{memcpy, memmove, memset}` (+ a few `strcpy`/`strcat`). The paper's claim **and its
recall denominator** are scoped to this bug class. This is honest and matches our evidence;
libxml2's 0-result is framed as a *boundary* (its CVEs are string-builder / tokenizer bugs
outside this sink model) — and that boundary is precisely what Paper 2 removes.

## SEAL Layer-1: design philosophy + motivating example (not a headline contribution)

The `oobsieve/` neuro-refinement package and its "never-invent, reject/subject-correct"
principle remain in the paper as **the design philosophy the detector inherits** and as a
**motivating anecdote** (the 2 real SEAL specs: KEEP + SUBJECT-CORRECT). We do **not** scale
Layer-1 to a labeled-spec benchmark; it is not measured as a primary metric.

## Evaluation plan

### Benchmarks: ARVO (primary) + Magma (secondary)

**ARVO** — scale + recall. 6000+ reproducible OSS-Fuzz memory bugs; each entry has
`project`, `crash_type` (e.g. `Heap-buffer-overflow READ/WRITE`), `sanitizer`, `fix_commit`
(meta JSON at `n132/ARVO-Meta:archive_data/meta/<id>.json`; recompile Docker at `n132/ARVO`).
Protocol:
1. Filter entries to `crash_type ∈ {Heap-, Stack-, Global-buffer-overflow}`.
2. Keep those whose `fix_commit` diff touches an intrinsic memory op (our sink class) →
   the in-scope labeled set (est. a few hundred).
3. For each: check out the **vulnerable** version (parent of fix_commit), run the symbolic
   candidate finder → **symbolic recall** = fraction whose fixed site appears as a candidate.
4. Run the LLM confirm → **end-to-end recall** (true bugs retained) and, on the same whole-
   project runs, **precision / FP-cut** (candidates the LLM correctly rejects vs the labeled
   bug) — this is the division-of-labour measurement.

**Magma** — comparability. 118 forward-ported CVEs, one-line toggle = exact location; run the
in-scope subset for a standard, cross-tool-comparable datapoint.

### Metrics
- **Recall** (symbolic candidate recall; end-to-end recall after LLM) on the in-scope set.
- **Precision** of confirmed findings, with **majority-vote over N samples** to kill flash
  non-determinism; report variance. (Open item: current single-sample precision swings
  50–67%.)
- **Ablations**: symbolic-only vs +LLM (FP-cut); guard-aware vs guard-unaware LLM prompt
  (the ND_TCHECK mechanism); with/without SMT path conditions.

### Reproducible verification protocol (replaces ad-hoc manual git-check)
Ground truth = ARVO/Magma labels (fix_commit / toggle), not keyword matching. `verify_taint.py`
STRONG/WEAK keyword split is retained only as a *ranking* aid for in-the-wild (non-benchmark)
findings; benchmark numbers use the labels.

## Distance to submission (honest)
- **Now**: feasibility proven; 3-project generalization; the mechanism demo; sound candidate
  engine (8/8 real bugs retained, 9%→35% candidate precision).
- **Paper 1 (Chinese), narrow scope**: + majority-vote stabilization + ARVO in-scope recall
  (first batch → then full in-scope set) + Magma comparability + write-up + baseline vs
  LLM-triage prior work. Feasibility→submittable is the near-term line of work.
- **Paper 2 (English), top-conference volume**: Paper 1 + the expanded sink model (string
  builders + tokenizer char-over-reads) evaluated on the larger ARVO population. Separate,
  later effort — not gating Paper 1.

## Immediate next engineering step
Build the ARVO recall harness: pull `ARVO-Meta`, filter to in-scope OOB entries, and for a
first batch (~20–30) recompile the vulnerable version and run `eval/pipeline.py`, recording
symbolic recall + end-to-end recall against the `fix_commit` label.

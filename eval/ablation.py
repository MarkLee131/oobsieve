from __future__ import annotations
from patchintent.cli import refine_patch

def run_ablation(patch_dirs, client_factory, conditions=("full", "no_commit"),
                 model="claude-fable-5"):
    """Run the intent-refinement ablation over `patch_dirs` for each condition.

    A1 (with/without commit message) is the `conditions` axis. A2 (multi-LLM)
    is driven by the caller invoking run_ablation once per model; results are
    keyed by condition name, so callers comparing models must namespace
    results per model themselves.
    """
    results: dict[str, list] = {c: [] for c in conditions}
    for cond in conditions:
        client = client_factory(model)
        use_commit = (cond == "full")
        for pd in patch_dirs:
            refined, _ = refine_patch(pd, client, use_commit_message=use_commit)
            results[cond].extend(refined)
    return results

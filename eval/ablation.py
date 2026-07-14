from __future__ import annotations
from patchintent.cli import refine_patch

def run_ablation(patch_dirs, client_factory, conditions=("full", "no_commit"),
                 model="claude-fable-5"):
    results: dict[str, list] = {c: [] for c in conditions}
    for cond in conditions:
        client = client_factory(model)
        use_commit = (cond == "full")
        for pd in patch_dirs:
            refined, _ = refine_patch(pd, client, use_commit_message=use_commit)
            results[cond].extend(refined)
    return results

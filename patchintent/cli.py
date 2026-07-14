from __future__ import annotations
import argparse, os
from patchintent.context import assemble
from patchintent.agent import IntentAgent
from patchintent.rewriter import apply_judgements, write_audit
from patchintent.spec_model import write_specs
from patchintent.llm.base import LLMClient

def refine_patch(patch_dir: str, client: LLMClient, source_root: str | None = None,
                 use_commit_message: bool = True, retries: int = 0):
    ctx = assemble(patch_dir, source_root=source_root)
    agent = IntentAgent(client, use_commit_message=use_commit_message, retries=retries)
    judgements = agent.judge(ctx)
    refined = apply_judgements(ctx.specs, judgements)
    return refined, judgements

def main(argv=None):
    ap = argparse.ArgumentParser(description="PatchIntent neuro layer")
    ap.add_argument("patch_dirs", nargs="+")
    ap.add_argument("--source-root", default=None)
    ap.add_argument("--model", default="gemini-2.5-pro")
    ap.add_argument("--no-commit-message", action="store_true")
    args = ap.parse_args(argv)
    from patchintent.llm.gemini_client import GeminiClient
    client = GeminiClient(model=args.model)
    for pd in args.patch_dirs:
        refined, judgements = refine_patch(
            pd, client, source_root=args.source_root,
            use_commit_message=not args.no_commit_message,
        )
        write_specs(os.path.join(pd, "specs.neuro.csv"), refined)
        write_audit(os.path.join(pd, "specs.neuro.audit.jsonl"), judgements)
        print(f"{pd}: {len(refined)} specs kept, {len(judgements)} judged")

if __name__ == "__main__":
    main()

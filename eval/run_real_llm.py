#!/usr/bin/env python3
"""Turnkey real-LLM validation of the PatchIntent neuro layer (Layer 1).

Runs the intent-reading agent with a REAL Anthropic model over real SEAL specs
(under eval/real_specs/), printing each spec's keep/drop/subject-correct verdict,
confidence, and rationale, plus a summary.

Requires ANTHROPIC_API_KEY in the environment.

Usage (from the repo root):
    ANTHROPIC_API_KEY=sk-... python3 eval/run_real_llm.py [--model claude-fable-5]

Each subdir of eval/real_specs/ is a SEAL patch dir: specs.csv (real SEAL output)
+ commit_meta.json (real commit message) + diff.txt.
"""
from __future__ import annotations
import argparse
import os
import sys

# allow running from repo root without install
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from patchintent.cli import refine_patch          # noqa: E402
from patchintent.context import assemble          # noqa: E402

REAL_SPECS_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "real_specs")


def main(argv=None):
    ap = argparse.ArgumentParser(description="Real-LLM validation of the neuro layer")
    ap.add_argument("--model", default="claude-fable-5")
    ap.add_argument("--specs-dir", default=REAL_SPECS_DIR)
    args = ap.parse_args(argv)

    if not os.environ.get("ANTHROPIC_API_KEY"):
        sys.exit("ANTHROPIC_API_KEY is not set. Export it and re-run.")

    from patchintent.llm.anthropic_client import AnthropicClient
    client = AnthropicClient(model=args.model)

    patch_dirs = sorted(
        os.path.join(args.specs_dir, d)
        for d in os.listdir(args.specs_dir)
        if os.path.isdir(os.path.join(args.specs_dir, d))
    )
    if not patch_dirs:
        sys.exit(f"no patch dirs under {args.specs_dir}")

    total = kept = dropped = corrected = 0
    print(f"# PatchIntent real-LLM validation (model={args.model})\n")
    for pd in patch_dirs:
        ctx = assemble(pd)
        _refined, judgements = refine_patch(pd, client)
        print(f"## {ctx.patch_id}  ({len(ctx.specs)} candidate spec(s))")
        subject = ctx.commit_message.splitlines()[0] if ctx.commit_message else "(no message)"
        print(f"   commit: {subject}")
        for j in judgements:
            total += 1
            kept += j.verdict.value == "keep"
            dropped += j.verdict.value == "drop"
            corrected += j.verdict.value == "subject-correct"
            print(f"   [spec {j.spec_id}] {j.verdict.value.upper():>15}  "
                  f"conf={j.intent_confidence:.2f}")
            print(f"       rationale: {j.rationale}")
            if j.corrected_subject:
                print(f"       corrected subject: {j.corrected_subject}")
        print()

    print("## summary")
    print(f"   specs judged : {total}")
    print(f"   keep         : {kept}")
    print(f"   drop         : {dropped}")
    print(f"   subject-correct: {corrected}")


if __name__ == "__main__":
    main()

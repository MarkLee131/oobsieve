#!/usr/bin/env python3
"""OOBSieve end-to-end detection pipeline (one command).

Runs the detect and assess stages in one go over a real C project:
  1. symbolic candidate finding (LLVM def-use taint + sanitizer/field/path/SMT passes)
  2. neural confirmation (Gemini, reject-only)
  3. assessment (git-history verification: did upstream later fix this site?)

The property checked is an input-derived size or pointer reaching a memory operation
without a sufficient bounds check.

Usage:
    GEMINI_API_KEY=... python3 eval/pipeline.py <src_dir> \
        --git <git_repo_dir> --glob 'archive_read_support_format_*.c' \
        --cflags '-DHAVE_CONFIG_H' [--model gemini-2.5-flash] [--no-confirm]
"""
from __future__ import annotations
import argparse
import glob
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import taint_llvm as T          # noqa: E402
import verify_taint as V        # noqa: E402


def _confirm(cand, src_dir, client, parse):
    src = os.path.join(src_dir, cand["file"])
    try:
        lines = open(src, errors="ignore").read().splitlines()
    except OSError:
        return None
    ln = cand.get("line") or 1
    ctx = "\n".join(lines[max(0, ln - 40):ln + 4])
    sysp = ('Answer ONLY JSON {"real_bug":bool,"reasoning":str}. A def-use taint '
            "analysis proved an input-derived value reaches the flagged memory op's "
            f"{cand.get('tainted_operand')} operand. Decide if this is a genuine "
            "out-of-bounds. Reject constant/clamped/allocation-to-fit sizes. IMPORTANT: "
            "a bounds check need not be a plain `if`; longjmp/goto-based bounds MACROS "
            "that guard the SAME pointer+length just above the op are sufficient, e.g. "
            "tcpdump ND_TCHECK/ND_TCHECK2/ND_TTEST(ptr,len) before a memcpy(ptr,...,len), "
            "or similar CHECK_*/bounds-assert macros. If such a guard covers the accessed "
            "range, real_bug=false. Flag real_bug=true only if an input-derived size can "
            "exceed the buffer, or an input offset reads/writes past its end, with no "
            "such guard (plain or macro) covering it. Be conservative.")
    usrp = f"{cand['sink']} at line {ln}, tainted {cand.get('tainted_operand')}.\n```c\n{ctx}\n```"
    return parse(client.complete(sysp, usrp))


def main(argv=None):
    ap = argparse.ArgumentParser(description="OOBSieve detection pipeline")
    ap.add_argument("src_dir")
    ap.add_argument("--git", required=True, help="git repo root for verification")
    ap.add_argument("--glob", default="*.c")
    ap.add_argument("--cflags", default="-DHAVE_CONFIG_H")
    ap.add_argument("--clang", default="clang")
    ap.add_argument("--model", default="gemini-2.5-flash")
    ap.add_argument("--no-confirm", action="store_true")
    ap.add_argument("--project", default=None, help="label for the report")
    args = ap.parse_args(argv)

    cflags = args.cflags.split() + [f"-I{args.src_dir}", f"-I{os.path.dirname(args.src_dir)}"]
    files = sorted(glob.glob(os.path.join(args.src_dir, "**", args.glob), recursive=True))
    tmp_ll = os.path.join(os.path.dirname(os.path.abspath(__file__)), "_pipe.ll")

    # 1. symbolic candidates
    candidates = []
    for fp in files:
        candidates.extend(T.analyze(fp, cflags, args.clang, tmp_ll))
    print(f"# project={args.project or os.path.basename(args.src_dir.rstrip('/'))}  "
          f"files={len(files)}  symbolic candidates={len(candidates)}")

    # 2. neural confirmation
    confirmed = candidates
    if not args.no_confirm:
        if not (os.environ.get("GEMINI_API_KEY") or os.environ.get("GOOGLE_API_KEY")):
            sys.exit("GEMINI_API_KEY not set (use --no-confirm for symbolic-only).")
        from oobsieve.llm.gemini_client import GeminiClient
        from oobsieve.agent import _parse_json
        # thinking_budget=0: disabling the thinking pass cuts per-call latency about 10x
        # and does not change the yes/no judgement
        client = GeminiClient(model=args.model, thinking_budget=0)
        confirmed = []
        for i, c in enumerate(candidates, 1):
            v = _confirm(c, args.src_dir, client, _parse_json)
            if v and v.get("real_bug"):
                c["reasoning"] = v.get("reasoning", "")
                confirmed.append(c)
            print(f"\r  confirming {i}/{len(candidates)} "
                  f"({len(confirmed)} real so far)", end="", flush=True)
        print(f"\n# confirmed by {args.model}: {len(confirmed)}/{len(candidates)}")

    # 3. assessment: git-history verification (did the function get a later bounds fix?)
    rel = "libarchive/{}" if "libarchive" in args.src_dir else "{}"
    real = 0
    for c in confirmed:
        fixes = V.func_history(args.git, c.get("func", "?"), rel.format(c["file"]))
        c["later_fix"] = fixes[:2]
        c["verified"] = bool(fixes)
        real += bool(fixes)
        flag = "VERIFIED-REAL" if fixes else "unconfirmed-by-git"
        print(f"  [{flag}] {c['file']}:{c['line']} {c.get('func')} "
              f"(tainted={c.get('tainted_operand')})")

    prec = f"{real / len(confirmed) * 100:.0f}%" if confirmed else "n/a (0 confirmed)"
    print(f"\n## {args.project or 'result'}: {len(candidates)} candidates -> "
          f"{len(confirmed)} confirmed -> {real} git-verified real  "
          f"(confirmed-precision {prec})")
    out = os.path.join(os.path.dirname(os.path.abspath(__file__)),
                       f"pipeline_{args.project or 'run'}.json")
    json.dump(confirmed, open(out, "w"), indent=1)
    print(f"report -> {out}")


if __name__ == "__main__":
    main()

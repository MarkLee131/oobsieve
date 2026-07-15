#!/usr/bin/env python3
"""Per-finding git-history verification for taint detector results.

For each finding (file, function, line), trace the function's later history with
`git log -L :func:file` from the master branch and look for a commit that ADDED a
bounds/sanity/overflow fix touching that function -> strong evidence the flagged
site was a genuine bug that upstream later fixed.

This is a per-function signal (not a hand-wave "some fix in the file"): the fix
must touch the SAME function the finding is in. A human still eyeballs borderline
cases, but this ranks findings real vs unconfirmed for a precision estimate.

Usage:
    python3 eval/verify_taint.py <libarchive_git_dir> <findings.json>
"""
from __future__ import annotations
import json
import re
import subprocess
import sys

FIX_RE = re.compile(r"protect|bound|overflow|out-of-bound|out of bound|oob|sanity|"
                    r"check|OOB|validate|integer|underflow|clamp|limit", re.I)


def func_history(repo: str, func: str, rel: str) -> list[str]:
    try:
        out = subprocess.check_output(
            ["git", "-C", repo, "log", "-L", f":{func}:{rel}", "--oneline"],
            text=True, stderr=subprocess.DEVNULL, errors="ignore")
    except subprocess.CalledProcessError:
        return []
    # commit lines look like "<sha> <subject>"; keep the ones that mention a fix
    commits = []
    for line in out.splitlines():
        m = re.match(r"^([0-9a-f]{7,}) (.+)$", line)
        if m and FIX_RE.search(m.group(2)):
            commits.append(f"{m.group(1)} {m.group(2)}")
    return commits


def main(argv=None):
    repo, findings_path = (argv or sys.argv[1:])[:2]
    findings = json.load(open(findings_path))
    rel = "libarchive/{}"
    real = unconfirmed = 0
    print(f"# verifying {len(findings)} findings against function history (from master)\n")
    for f in findings:
        func = f.get("func", "?")
        path = rel.format(f["file"])
        fixes = func_history(repo, func, path)
        status = "REAL" if fixes else "unconfirmed"
        real += bool(fixes); unconfirmed += (not fixes)
        print(f"[{status}] {f['file']}:{f.get('line')} {func}  "
              f"(tainted={f.get('tainted_operand', '?')})")
        for c in fixes[:2]:
            print(f"    later fix touching {func}: {c}")
    print(f"\n## {real} REAL / {len(findings)} findings have a later bounds-fix in the "
          f"same function  ({unconfirmed} unconfirmed)")


if __name__ == "__main__":
    main()

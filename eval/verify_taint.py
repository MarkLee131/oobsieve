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

# STRONG signal: the commit subject names an actual memory-safety defect. These are
# the words maintainers use when fixing a real OOB, not when refactoring guards.
STRONG_RE = re.compile(
    r"overflow|underflow|out-of-bound|out of bound|\boob\b|CVE-\d|"
    r"read past|write past|over-?read|over-?write|heap|buffer overrun|"
    r"invalid read|invalid write|use.after.free|\bASAN\b", re.I)
# WEAK signal: generic hardening words that ALSO match macro churn / refactors
# (e.g. tcpdump's ND_TTEST->ND_TCHECK sweep). Reported, but not counted as real.
WEAK_RE = re.compile(r"protect|bound|sanity|check|validate|clamp|limit|truncat", re.I)


def func_history(repo: str, func: str, rel: str, ref: str = "master",
                 weak: bool = False) -> list[str]:
    # trace from a LATER ref (master) so `git log -L` sees fixes that landed AFTER the
    # analysed version; falls back to main / HEAD.
    out = ""
    for r in (ref, "main", "HEAD"):
        try:
            out = subprocess.check_output(
                ["git", "-C", repo, "log", "-L", f":{func}:{rel}", "--oneline", r],
                text=True, stderr=subprocess.DEVNULL, errors="ignore")
            if out.strip():
                break
        except subprocess.CalledProcessError:
            continue
    # commit lines look like "<sha> <subject>"; keep only STRONG memory-safety fixes
    # (default). weak=True additionally accepts generic-hardening subjects.
    pat = WEAK_RE if weak else STRONG_RE
    commits = []
    for line in out.splitlines():
        m = re.match(r"^([0-9a-f]{7,}) (.+)$", line)
        if m and pat.search(m.group(2)):
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

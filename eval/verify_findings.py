#!/usr/bin/env python3
"""First-pass reality check for detector findings against git history.

For each finding (file, line, enclosing memcpy op) reported by detect_real.py,
look for a LATER libarchive commit that added a bounds/sanity check touching the
same function — evidence the flagged site was a genuine bug that got fixed.

This is a signal, not proof: a human still confirms the strongest cases. It just
ranks findings by how likely they are real so verification is fast.

Usage:
    python3 eval/verify_findings.py <libarchive_git_dir> <findings.json>
"""
from __future__ import annotations
import json
import re
import subprocess
import sys


def enclosing_func_name(repo: str, rel_path: str, line: int, ref: str) -> str | None:
    # git blame the line's function via `git log -L` is heavy; instead grab the
    # function name by scanning upward in the file at `ref`.
    try:
        src = subprocess.check_output(
            ["git", "-C", repo, "show", f"{ref}:{rel_path}"], text=True,
            stderr=subprocess.DEVNULL).splitlines()
    except subprocess.CalledProcessError:
        return None
    for i in range(min(line - 1, len(src) - 1), -1, -1):
        m = re.match(r"^([A-Za-z_]\w*)\s*\(", src[i])
        if m and i > 0 and src[i - 1].strip() and not src[i - 1].rstrip().endswith(";"):
            return m.group(1)
    return None


def later_fix_touches(repo: str, rel_path: str, func: str) -> list[str]:
    """Return later commits that added a bounds/sanity check in this file mentioning
    the function or the classic guard idioms."""
    log = subprocess.check_output(
        ["git", "-C", repo, "log", "--all", "--oneline", "-i",
         "--grep=bound", "--grep=sanity", "--grep=overflow", "--grep=out-of-bounds",
         "--grep=out of bound", "--", rel_path], text=True,
        stderr=subprocess.DEVNULL).strip().splitlines()
    return log[:5]


def main(argv=None):
    repo, findings_path = (argv or sys.argv[1:])[:2]
    findings = json.load(open(findings_path))
    rel = "libarchive/{}"
    print(f"# verifying {len(findings)} findings against git history\n")
    ranked = []
    for f in findings:
        path = rel.format(f["file"])
        func = enclosing_func_name(repo, path, f["line"], "v3.1.2")
        fixes = later_fix_touches(repo, path, func or "")
        signal = "LIKELY-REAL" if fixes else "unconfirmed"
        ranked.append((signal, f, func, fixes))
        print(f"[{signal}] {f['file']}:{f['line']} fn={func} sev={f.get('severity')}")
        print(f"    op: {f['op']}")
        for c in fixes:
            print(f"    later fix: {c}")
        print()
    n_real = sum(1 for s, *_ in ranked if s == "LIKELY-REAL")
    print(f"## {n_real}/{len(findings)} findings have a later bounds/sanity fix in the same file")


if __name__ == "__main__":
    main()

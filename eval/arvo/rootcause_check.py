#!/usr/bin/env python3
"""For each scorable ARVO bug: does the fix commit edit the ASAN crash function itself,
a function in the same file, or only other files? Uses git's hunk-header function names."""
import glob, json, os, re, subprocess, sys
HERE = "/home/likaixuan/static_analysis/linux-spec-sast/oobsieve/eval/arvo"
sys.path.insert(0, HERE)
import recall_runner as RR
CACHE = "/tmp/arvo_repos"
man = {b["id"]: b for b in json.load(open(os.path.join(HERE, "manifest.json")))}
rows = []
for f in glob.glob(os.path.join(HERE, "noguard_results", "*.json")):
    rows += [r for r in json.load(open(f)) if r.get("recall") in ("hit", "miss")]
out = []
for r in sorted(rows, key=lambda r: (r["project"], r["id"])):
    b = man[r["id"]]; gt = r["gt_func"]
    fc = b["fix_commit"]; fc = fc[-1] if isinstance(fc, list) else fc
    repo = RR.ensure_repo(b["repo_addr"], b["project"], CACHE)
    rec = {"id": r["id"], "project": b["project"], "crash_func": gt, "fix": fc[:10],
           "recall": r["recall"], "e2e": r.get("e2e")}
    if not repo or not RR.checkout_vuln(repo, fc):
        rec["class"] = "no-repo"; out.append(rec); continue
    d = subprocess.run(["git", "diff", "-U0", f"{fc}^", fc], cwd=repo, stdout=subprocess.PIPE,
                       stderr=subprocess.DEVNULL, timeout=120).stdout.decode("utf-8", "replace")
    funcs = set(); files = set(); cur = None
    for line in d.splitlines():
        if line.startswith("+++ b/"): cur = line[6:]; files.add(cur)
        m = re.match(r"@@ .* @@\s*(.*)$", line)
        if m and cur:
            sig = m.group(1)
            fm = re.search(r"([A-Za-z_]\w*)\s*\(", sig)
            if fm: funcs.add(fm.group(1))
    # also catch the crash function appearing in a hunk header / +line as caller edit
    added_calls = bool(re.search(r"^\+.*\b" + re.escape(gt) + r"\s*\(", d, re.M)) if gt else False
    rec["fix_files"] = sorted(files)[:4]; rec["fix_funcs"] = sorted(funcs)[:8]
    if gt in funcs: rec["class"] = "fix-in-crash-func"
    elif added_calls: rec["class"] = "fix-at-caller"
    elif any(f.endswith((".c", ".h")) for f in files): rec["class"] = "fix-elsewhere"
    else: rec["class"] = "no-c-change"
    out.append(rec)
    print(rec["id"], rec["project"], gt, rec["class"], rec["fix_funcs"][:4], flush=True)
json.dump(out, open(os.path.join(HERE, "rootcause.json"), "w"), indent=1, ensure_ascii=False)
from collections import Counter
print(Counter(o["class"] for o in out))

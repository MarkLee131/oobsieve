#!/usr/bin/env python3
"""Symbolic-layer ablation on the FULL ARVO scorable set (same 88-project benchmark as RQ1),
measured by the two quantities ARVO can ground WITHOUT per-candidate annotation:
  - total candidate count at each cumulative modeling stage, and
  - real-bug recall RETENTION (does the crash-function bug survive each stage).
Candidate PRECISION needs per-candidate labels ARVO lacks, so it stays on the human-verified
libarchive reference; here we show the reduction + soundness GENERALIZE across all projects.
"""
import collections, glob, json, os, shutil, subprocess, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
RES = os.path.join(HERE, "ablation_results")
LIVE = os.path.join(HERE, "recall_results.json")
CACHE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/arvo_repos"
STAGES = ["基线污点值流", "+sanitizer/clamp", "+字段敏感分配即用", "+路径敏感守卫",
          "+按需SMT尺寸上界", "+SMT容量充分性", "+数组内元素搬移过滤"]


def scorable_by_project():
    rows = []
    for f in glob.glob(os.path.join(HERE, "campaign_results", "*.json")):
        rows += json.load(open(f))
    by = collections.defaultdict(list)
    for r in rows:
        if r.get("recall") in ("hit", "miss"):
            by[r["project"]].append(r["id"])
    return by


def run_project(proj, ids, timeout=700):
    out = os.path.join(RES, f"{proj}.json")
    if os.path.exists(out):
        print(f"[skip] {proj}", flush=True); return
    print(f"[run ] {proj} ({len(ids)} bugs)", flush=True)
    t0 = time.time()
    try:
        subprocess.run([sys.executable, os.path.join(HERE, "recall_runner.py"),
                        os.path.join(HERE, "manifest.json"), "--repos", CACHE,
                        "--project", proj, "--ids", ",".join(ids), "--limit", "50",
                        "--container", "seal", "--ablation"],
                       timeout=timeout, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    except subprocess.TimeoutExpired:
        print(f"[time] {proj} >{timeout}s", flush=True)
    if os.path.exists(LIVE):
        rows = json.load(open(LIVE))
        if rows and all(r.get("project") == proj for r in rows):
            shutil.copy(LIVE, out)
            print(f"[done] {proj} {len(rows)} rows {time.time()-t0:.0f}s", flush=True)
            return
    print(f"[fail] {proj} {time.time()-t0:.0f}s", flush=True)


def aggregate():
    rows = []
    for f in glob.glob(os.path.join(RES, "*.json")):
        rows += json.load(open(f))
    abl = [r for r in rows if "abl" in r]
    n = len(abl)
    counts = [sum(r["abl"][i]["count"] for r in abl) for i in range(len(STAGES))]
    recall = [sum(1 for r in abl if r["abl"][i]["gt_hit"]) for i in range(len(STAGES))]
    base = counts[0] or 1
    print(f"\n{'='*70}\nSYMBOLIC-LAYER ABLATION on full ARVO scorable set (n={n} bugs)")
    print(f"{'stage':24s} {'total cands':>11s} {'reduction':>10s} {'recall(ret.)':>14s}")
    for i, s in enumerate(STAGES):
        print(f"{s:24s} {counts[i]:>11d} {(base-counts[i])/base*100:>9.0f}% "
              f"{recall[i]}/{n} ({recall[i]/max(n,1)*100:.0f}%)")
    json.dump({"n": n, "stages": STAGES, "counts": counts, "recall": recall},
              open(os.path.join(HERE, "ablation_summary.json"), "w"), indent=1)
    print("summary -> ablation_summary.json")


def main():
    os.makedirs(RES, exist_ok=True)
    if "--aggregate" in sys.argv:
        aggregate(); return
    by = scorable_by_project()
    for proj in sorted(by):
        run_project(proj, by[proj])
    aggregate()


if __name__ == "__main__":
    main()

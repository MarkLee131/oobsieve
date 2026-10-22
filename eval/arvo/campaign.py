#!/usr/bin/env python3
"""ARVO recall campaign: run the symbolic recall runner project by project, keep a copy
of each project's results (recall_runner overwrites recall_results.json on every run),
and aggregate across projects.

Usage:
    python3 campaign.py <cache_dir> [--limit N] [--per-timeout S] project1 project2 ...
    python3 campaign.py <cache_dir> --aggregate      # just re-aggregate saved results
"""
import argparse
import collections
import json
import os
import shutil
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
RESULT_DIR = os.path.join(HERE, "campaign_results")
RUNNER = os.path.join(HERE, "recall_runner.py")
MANIFEST = os.path.join(HERE, "manifest.json")
LIVE = os.path.join(HERE, "recall_results.json")


def run_project(project, cache, limit, per_timeout):
    out = os.path.join(RESULT_DIR, f"{project}.json")
    if os.path.exists(out):
        print(f"[skip] {project} already done", flush=True)
        return
    print(f"[run ] {project} (limit={limit}, timeout={per_timeout}s)", flush=True)
    t0 = time.time()
    try:
        subprocess.run(
            [sys.executable, RUNNER, MANIFEST, "--repos", cache,
             "--project", project, "--limit", str(limit), "--container", "seal"],
            timeout=per_timeout, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    except subprocess.TimeoutExpired:
        print(f"[time] {project} exceeded {per_timeout}s, keeping partial live results", flush=True)
    # the runner writes its results file at the end, so after a timeout there may be none
    if os.path.exists(LIVE):
        try:
            rows = json.load(open(LIVE))
            if rows and all(r.get("project") == project for r in rows):
                shutil.copy(LIVE, out)
                print(f"[done] {project} {len(rows)} rows in {time.time()-t0:.0f}s", flush=True)
                return
        except Exception:
            pass
    print(f"[fail] {project} no usable results in {time.time()-t0:.0f}s", flush=True)


def aggregate():
    rows = []
    for f in sorted(os.listdir(RESULT_DIR)):
        if f.endswith(".json"):
            try:
                rows += json.load(open(os.path.join(RESULT_DIR, f)))
            except Exception:
                pass
    built = [r for r in rows if r.get("build_ok")]
    scorable = [r for r in built if r["recall"] in ("hit", "miss")]
    hit = [r for r in scorable if r["recall"] == "hit"]
    oos = [r for r in built if r["recall"] == "oos"]
    notin = [r for r in built if r["recall"] == "gt-not-in-file"]

    per = collections.defaultdict(lambda: collections.Counter())
    for r in rows:
        per[r["project"]][r["recall"] if r.get("build_ok") else "build-fail"] += 1

    print(f"\n{'='*60}\nAGGREGATE across {len(per)} projects, {len(rows)} bugs")
    print(f"  build coverage : {len(built)}/{len(rows)} ({len(built)/max(len(rows),1)*100:.0f}%)")
    print(f"  scorable       : {len(scorable)}")
    print(f"  function recall : {len(hit)}/{len(scorable)} "
          f"({len(hit)/max(len(scorable),1)*100:.0f}%)")
    print(f"  excluded oos   : {len(oos)}   gt-not-in-file: {len(notin)}")
    print(f"\n{'project':22s} {'hit/scorable':>12s}   (oos/notin/buildfail)")
    for p in sorted(per):
        c = per[p]
        sc = c["hit"] + c["miss"]
        print(f"{p:22s} {c['hit']:>3d}/{sc:<3d}       "
              f"(oos={c['oos']}, notin={c['gt-not-in-file']}, bf={c['build-fail']})")

    summary = {
        "projects": len(per), "bugs": len(rows),
        "build_ok": len(built), "scorable": len(scorable), "hit": len(hit),
        "recall_pct": round(len(hit) / max(len(scorable), 1) * 100, 1),
        "oos": len(oos), "gt_not_in_file": len(notin),
        "per_project": {p: dict(per[p]) for p in per},
    }
    json.dump(summary, open(os.path.join(HERE, "campaign_summary.json"), "w"), indent=1)
    print(f"\nsummary -> campaign_summary.json")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--cache", required=True)
    ap.add_argument("--projects", default="", help="comma-separated project list")
    ap.add_argument("--limit", type=int, default=12)
    ap.add_argument("--per-timeout", type=int, default=420)
    ap.add_argument("--aggregate", action="store_true")
    args = ap.parse_args()
    os.makedirs(RESULT_DIR, exist_ok=True)
    if not args.aggregate:
        for p in [x for x in args.projects.split(",") if x]:
            run_project(p, args.cache, args.limit, args.per_timeout)
    aggregate()


if __name__ == "__main__":
    main()

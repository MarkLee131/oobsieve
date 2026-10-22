#!/usr/bin/env python3
"""Run the neural confirm layer in both orientations (recall-first and aggressive) over
the symbolic candidates of every ARVO scorable bug, so that the neural-layer evaluation
uses the same dataset as the recall evaluation.

Per project: recall_runner --confirm --ids <scorable ids>; copy results out; then aggregate
end-to-end recall + FP-cut for both orientations across all scorable bugs.
"""
import collections, glob, json, os, shutil, subprocess, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
RES = os.path.join(HERE, "confirm_results")
LIVE = os.path.join(HERE, "recall_results.json")
CACHE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/arvo_repos"


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
                        "--container", "seal", "--confirm", "--model", "gemini-2.5-flash"],
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
    conf = [r for r in rows if "e2e" in r]           # confirm actually ran
    hits = [r for r in conf if r["recall"] == "hit"]
    # end-to-end recall = true bug survives confirm
    e2e_rf = sum(1 for r in hits if r.get("e2e") == "hit")
    e2e_ag = sum(1 for r in hits if r.get("e2e_aggr") == "hit")
    drop_rf = sum(1 for r in hits if r.get("e2e") == "dropped")
    drop_ag = sum(1 for r in hits if r.get("e2e_aggr") == "dropped")
    # FP-cut = non-crash-func candidates rejected / sampled
    oth = sum(r.get("n_other_sampled", 0) for r in conf)
    oth_rf = sum(r.get("n_other_confirmed", 0) for r in conf)
    oth_ag = sum(r.get("n_other_confirmed_aggr", 0) for r in conf)
    n = len(conf)
    def pct(a, b): return f"{a}/{b} = {a/max(b,1)*100:.0f}%"
    print(f"\n{'='*60}\nNEURO CONFIRM on ARVO scorable set (both orientations)")
    print(f"  scorable bugs with confirm: {n}   (of which crash-func hits: {len(hits)})")
    print(f"  end-to-end recall  recall-first: {pct(e2e_rf, n)}   [true bugs dropped: {drop_rf}]")
    print(f"  end-to-end recall  aggressive  : {pct(e2e_ag, n)}   [true bugs dropped: {drop_ag}]")
    print(f"  FP-cut (non-crash cands rejected)  recall-first: {pct(oth - oth_rf, oth)}")
    print(f"  FP-cut (non-crash cands rejected)  aggressive  : {pct(oth - oth_ag, oth)}")
    json.dump({"n": n, "hits": len(hits),
               "e2e_recall_first": e2e_rf, "e2e_aggressive": e2e_ag,
               "dropped_rf": drop_rf, "dropped_ag": drop_ag,
               "oth": oth, "oth_kept_rf": oth_rf, "oth_kept_ag": oth_ag},
              open(os.path.join(HERE, "confirm_summary.json"), "w"), indent=1)
    print("summary -> confirm_summary.json")


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

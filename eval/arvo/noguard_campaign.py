#!/usr/bin/env python3
"""Re-run RQ1 (symbolic recall) + RQ3 (neuro confirm, both orientations) on the ARVO
scorable set with the path-guard relatedness heuristic DROPPED (--no-guard): the symbolic
layer becomes purely high-recall (SMT-only guard sufficiency) and the LLM handles precision.
One compile pass per bug yields the new recall AND the new confirm numbers.
"""
import collections, glob, json, os, shutil, subprocess, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
RES = os.path.join(HERE, "noguard_results")
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


def run_project(proj, ids, timeout=800):
    out = os.path.join(RES, f"{proj}.json")
    if os.path.exists(out):
        print(f"[skip] {proj}", flush=True); return
    print(f"[run ] {proj} ({len(ids)} bugs)", flush=True)
    t0 = time.time()
    try:
        subprocess.run([sys.executable, os.path.join(HERE, "recall_runner.py"),
                        os.path.join(HERE, "manifest.json"), "--repos", CACHE,
                        "--project", proj, "--ids", ",".join(ids), "--limit", "50",
                        "--container", "seal", "--no-guard", "--confirm",
                        "--model", "gemini-2.5-flash"],
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
    scor = [r for r in rows if r.get("recall") in ("hit", "miss")]
    hit = [r for r in scor if r["recall"] == "hit"]
    n_cands = sum(r.get("n_candidates", 0) for r in scor)
    conf = [r for r in scor if "e2e" in r]
    e2e_rf = sum(1 for r in conf if r.get("e2e") == "hit")
    e2e_ag = sum(1 for r in conf if r.get("e2e_aggr") == "hit")
    drop_rf = sum(1 for r in conf if r.get("e2e") == "dropped")
    drop_ag = sum(1 for r in conf if r.get("e2e_aggr") == "dropped")
    oth = sum(r.get("n_other_sampled", 0) for r in conf)
    oth_rf = sum(r.get("n_other_confirmed", 0) for r in conf)
    oth_ag = sum(r.get("n_other_confirmed_aggr", 0) for r in conf)
    nh = len([r for r in conf if r["recall"] == "hit"])

    def pct(a, b): return f"{a}/{b} = {a/max(b,1)*100:.0f}%"
    print(f"\n{'='*64}\nNO-GUARD pipeline on ARVO scorable set")
    print(f"  scorable bugs: {len(scor)}   total candidates: {n_cands}")
    print(f"  SYMBOLIC recall (no guard): {pct(len(hit), len(scor))}   [was 29/46=63% with guard]")
    print(f"  -- neuro confirm (n={len(conf)}, crash-hits={nh}) --")
    print(f"  e2e recall  recall-first: {pct(e2e_rf, len(conf))}  [dropped {drop_rf}]")
    print(f"  e2e recall  aggressive  : {pct(e2e_ag, len(conf))}  [dropped {drop_ag}]")
    print(f"  FP-cut recall-first: {pct(oth - oth_rf, oth)}   aggressive: {pct(oth - oth_ag, oth)}")
    json.dump({"scorable": len(scor), "hit": len(hit), "n_cands": n_cands,
               "e2e_rf": e2e_rf, "e2e_ag": e2e_ag, "drop_rf": drop_rf, "drop_ag": drop_ag,
               "n_conf": len(conf), "hits_conf": nh,
               "oth": oth, "oth_kept_rf": oth_rf, "oth_kept_ag": oth_ag},
              open(os.path.join(HERE, "noguard_summary.json"), "w"), indent=1)
    print("summary -> noguard_summary.json")


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

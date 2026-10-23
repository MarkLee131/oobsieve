#!/usr/bin/env python3
"""Aggregate a results dir of recall_runner rows (one json per project)."""
import glob, json, sys, collections
def load(d):
    rows=[]
    for f in glob.glob(d+"/*.json"): rows+=json.load(open(f))
    return rows
def summarize(rows, label):
    scor=[r for r in rows if r.get("recall") in ("hit","miss")]
    conf=[r for r in scor if "e2e" in r]
    hit=[r for r in conf if r["recall"]=="hit"]
    e2e=sum(r["e2e"]=="hit" for r in conf); drop=sum(r["e2e"]=="dropped" for r in conf)
    e2e_a=sum(r["e2e_aggr"]=="hit" for r in conf); drop_a=sum(r["e2e_aggr"]=="dropped" for r in conf)
    oth=sum(r.get("n_other_sampled",0) for r in conf); kept=sum(r.get("n_other_confirmed",0) for r in conf); kept_a=sum(r.get("n_other_confirmed_aggr",0) for r in conf)
    err=[r for r in rows if str(r.get("recall","")).startswith("error")]
    print(f"{label}: scorable={len(scor)} confirmed-rows={len(conf)} sym-hit={len(hit)} | recall-first e2e={e2e} dropped={drop} FPcut={(oth-kept)}/{oth}={(oth-kept)/max(oth,1)*100:.0f}% | aggressive e2e={e2e_a} dropped={drop_a} FPcut={(oth-kept_a)}/{oth}={(oth-kept_a)/max(oth,1)*100:.0f}% | errors={len(err)}")
    return conf
if __name__=="__main__":
    for d in sys.argv[1:]:
        rows=load(d); conf=summarize(rows,d.split("/")[-2] if d.endswith("results") else d)
        projs=collections.Counter(r["project"] for r in rows); print("  projects:",len(projs), "dropped:",[(r["project"],r["gt_func"]) for r in conf if r["e2e"]=="dropped"])

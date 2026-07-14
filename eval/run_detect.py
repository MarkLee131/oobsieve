from __future__ import annotations
import json, subprocess

CBCHECK = "/clearblue/bin/cb-check"
PLUGIN = "/seal-workdir/build/libSEGPatchPlugin.so"

def run_detect(specs_csv: str, target_bc: str, report_json: str) -> None:
    subprocess.run([
        CBCHECK, f"-load={PLUGIN}", "-enable-patch-analysis", "-patch-plugin",
        "-omit-no-dbginfo", "-falcon-use-valuetostring", "-seg-enable-valuetostring",
        "-nworkers=1", "-execution-mode=digging", "-set-inc-tactic=smt_tactic",
        "-detect-patch-bug", f"-specs={specs_csv}", f"-report={report_json}", target_bc,
    ], check=True)

def _bug_keys(report: list[dict]) -> set[tuple]:
    return {(b.get("file"), b.get("line"), b.get("spec_type")) for b in report}

def diff_bugs(baseline_json: str, neuro_json: str) -> dict:
    b = json.load(open(baseline_json)); n = json.load(open(neuro_json))
    bk, nk = _bug_keys(b), _bug_keys(n)
    return {"only_baseline": sorted(bk - nk), "only_neuro": sorted(nk - bk),
            "shared": sorted(bk & nk), "n_baseline": len(bk), "n_neuro": len(nk)}

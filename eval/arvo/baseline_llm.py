#!/usr/bin/env python3
"""Pure-LLM baseline: does an LLM ALONE (no symbolic value-flow evidence) detect the
OOB at the crash function? Function-level recall, directly comparable to the symbolic
engine's function-precise recall. Also runs a sibling-function control to expose the
LLM's indiscriminate flag rate (specificity).

For each scorable ARVO bug (recall in {hit,miss}): check out the vulnerable version,
extract the crash function's C source, ask the LLM (generic prompt, no taint/SMT hints)
whether it contains an input-triggerable OOB. Recall = fraction of crash functions
flagged. Control = flag rate on one non-crash sibling function per bug.
"""
import glob
import json
import os
import re
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(HERE)))  # repo root for `oobsieve`
sys.path.insert(0, ROOT)
from oobsieve.llm.gemini_client import GeminiClient  # noqa: E402
from oobsieve.agent import _parse_json  # noqa: E402

CACHE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/arvo_repos"
MODEL = "gemini-2.5-flash"

SYS = "You are a meticulous C security auditor hunting for out-of-bounds memory bugs."


def sh(args, cwd=None, timeout=120):
    try:
        return subprocess.run(args, cwd=cwd, timeout=timeout, stdout=subprocess.PIPE,
                              stderr=subprocess.STDOUT, text=True)
    except Exception:
        class R:  # noqa
            returncode = 127; stdout = ""
        return R()


def checkout_vuln(repo, fix_commit):
    # repos are already cached with the commit fetched by the campaign; avoid slow fetches
    par = sh(["git", "rev-parse", f"{fix_commit}^"], cwd=repo, timeout=20)
    if par.returncode != 0:
        sh(["git", "fetch", "--depth", "2", "origin", fix_commit], cwd=repo, timeout=60)
        par = sh(["git", "rev-parse", f"{fix_commit}^"], cwd=repo, timeout=20)
        if par.returncode != 0:
            return False
    return sh(["git", "checkout", "-f", par.stdout.strip()], cwd=repo, timeout=60).returncode == 0


def find_func_files(repo, patched, gt):
    """Bounded search for files defining `gt`: manifest patched files first, then a
    single `git grep` (index-scoped, fast) — never a repo-wide python glob."""
    files = [os.path.join(repo, p) for p in patched]
    gr = sh(["git", "grep", "-lE", re.escape(gt) + r"\s*\(", "HEAD"], cwd=repo, timeout=30)
    if gr.returncode == 0:
        for tok in gr.stdout.split()[:6]:
            rel = tok.split(":", 1)[1] if ":" in tok else tok
            if rel.endswith((".c", ".h", ".cc", ".cpp")):
                files.append(os.path.join(repo, rel))
    seen, out = set(), []
    for f in files:
        if f not in seen and os.path.isfile(f):
            seen.add(f); out.append(f)
    return out


def extract_func(lines, name):
    """Return the source of C function `name` by brace-matching, or None."""
    pat = re.compile(r"\b" + re.escape(name) + r"\s*\(")
    for i, ln in enumerate(lines):
        if not pat.search(ln):
            continue
        # find the opening brace within a few lines and ensure it's a definition
        j, depth, seen = i, 0, False
        while j < min(i + 6, len(lines)) and "{" not in lines[j]:
            if ";" in lines[j] and j > i:   # a prototype/callsite, not a def
                break
            j += 1
        if j >= len(lines) or "{" not in lines[j]:
            continue
        start = max(0, i - 2)               # include the return-type line
        buf = []
        for k in range(start, len(lines)):
            buf.append(lines[k])
            depth += lines[k].count("{") - lines[k].count("}")
            if "{" in lines[k]:
                seen = True
            if seen and depth <= 0:
                src = "\n".join(buf)
                if len(src) > 60:            # ignore trivial matches
                    return src[:14000]
                break
    return None


def sibling_func(lines, crash_name):
    """A different top-level function in the same file, as a control."""
    for m in re.finditer(r"^[A-Za-z_][\w \t\*]+?\b([A-Za-z_]\w+)\s*\([^;]*\)\s*\{", "\n".join(lines), re.M):
        nm = m.group(1)
        if nm != crash_name and nm not in ("if", "for", "while", "switch", "sizeof", "return"):
            src = extract_func(lines, nm)
            if src:
                return src
    return None


def ask(client, file, func_src):
    user = (f"FILE: {file}\n\nBelow is a complete C function. Decide whether it contains an "
            "out-of-bounds read or write (e.g. at a memcpy/memmove/memset or a buffer index) "
            "that could be triggered by malformed/attacker-controlled input.\n\n"
            f"```c\n{func_src}\n```\n\n"
            'Answer strictly as JSON: {"oob": true|false, "reason": "<=25 words}')
    try:
        v = _parse_json(client.complete(SYS, user))
        return bool(v.get("oob"))
    except Exception:
        return None


def main():
    rows = []
    for f in glob.glob(os.path.join(HERE, "campaign_results", "*.json")):
        rows += json.load(open(f))
    scor = [r for r in rows if r.get("recall") in ("hit", "miss")]
    man = {b["id"]: b for b in json.load(open(os.path.join(HERE, "manifest.json")))}
    client = GeminiClient(model=MODEL)

    out = []
    hit = ctrl_flag = ctrl_n = 0
    for r in scor:
        b = man.get(r["id"])
        if not b:
            continue
        repo = os.path.join(CACHE, r["project"])
        gt = r["gt_func"]
        rec = {"id": r["id"], "project": r["project"], "gt_func": gt,
               "sym": r["recall"], "llm": None, "ctrl": None}
        if os.path.isdir(repo) and checkout_vuln(repo, b["fix_commit"]):
            patched = [fd["file"] for fd in b.get("files", [])]
            cand_files = find_func_files(repo, patched, gt)
            src = sib = fpath = None
            for cf in cand_files:
                lines = open(cf, errors="ignore").read().splitlines()
                s = extract_func(lines, gt)
                if s:
                    src, fpath = s, os.path.basename(cf)
                    sib = sibling_func(lines, gt)
                    break
            if src:
                rec["llm"] = ask(client, fpath, src)
                if rec["llm"]:
                    hit += 1
                if sib:
                    rec["ctrl"] = ask(client, fpath, sib)
                    if rec["ctrl"] is not None:
                        ctrl_n += 1
                        ctrl_flag += 1 if rec["ctrl"] else 0
        out.append(rec)
        print(f"  [{r['project']:14s} {r['id']:>7s}] sym={r['recall']:4s} "
              f"llm_oob={rec['llm']} ctrl={rec['ctrl']} gt={gt}", flush=True)

    scored = [r for r in out if r["llm"] is not None]
    print(f"\n## PURE-LLM BASELINE ({MODEL}, no symbolic evidence)")
    print(f"  crash functions evaluated: {len(scored)}/{len(scor)}")
    print(f"  function-level recall (LLM flags crash func as OOB): {hit}/{len(scored)} "
          f"= {hit/max(len(scored),1)*100:.0f}%   [symbolic engine: 29/46 = 63%]")
    print(f"  CONTROL flag rate on non-crash sibling functions: {ctrl_flag}/{ctrl_n} "
          f"= {ctrl_flag/max(ctrl_n,1)*100:.0f}%  (LLM says 'OOB' even on non-crash funcs)")
    json.dump({"model": MODEL, "recall_hit": hit, "recall_n": len(scored),
               "ctrl_flag": ctrl_flag, "ctrl_n": ctrl_n, "rows": out},
              open(os.path.join(HERE, "baseline_llm_results.json"), "w"), indent=1)
    print("results -> baseline_llm_results.json")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""ARVO Docker route for symbolic recall at scale.

Per-bug host compilation caps build coverage at ~60% (missing headers/generated files) and
chokes on huge translation units. This route instead uses ARVO's reproduction image
`n132/arvo:<id>-vul`, which ships the project fully configured at the vulnerable version. We:

  1. pull the image;
  2. run OSS-Fuzz `compile` once (generates config.h / all headers), then RECOMPILE just the
     crash function's .c at `-O0 -g` + mem2reg inside the image (clang-12) -- clean IR our
     detector needs, with every include resolved by the real build (no host guessing);
  3. copy the .ll out, score crash-function recall on the host;
  4. remove the image to bound disk.

This trades wall-clock (a full `compile` per bug) for near-total build coverage, and handles
projects the host route can't build. Ground truth is still the ASAN crash function.

Usage:
    python3 eval/arvo/docker_extract.py eval/arvo/manifest.json --limit 40 \
        [--project opensc] [--ids 35865,...] [--keep-image]
"""
from __future__ import annotations
import argparse
import base64
import json
import os
import re
import subprocess
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
import taint_llvm as T  # noqa: E402

# in-container: build the project with a compiler wrapper that forces -O0 (using the build's
# EXACT -I/-D flags -- no reconstruction, no per-project quirks) via wllvm, which drops a
# single-module bitcode sibling `.<name>.o.bc`. We opt-mem2reg that directly (no llvm-link /
# extract-bc needed) to get clean -O0 IR of the crash function's TU.
_SCRIPT = r'''
set -u
pip3 install -q wllvm 2>/dev/null || pip3 install -q --user wllvm 2>/dev/null
cat > /usr/local/bin/cc0 <<'WEOF'
#!/bin/bash
a=(); for x in "$@"; do case "$x" in -O*|-flto*) ;; *) a+=("$x");; esac; done
exec wllvm -O0 -g -fno-inline "${a[@]}"
WEOF
cat > /usr/local/bin/cxx0 <<'WEOF'
#!/bin/bash
a=(); for x in "$@"; do case "$x" in -O*|-flto*) ;; *) a+=("$x");; esac; done
exec wllvm++ -O0 -g -fno-inline "${a[@]}"
WEOF
chmod +x /usr/local/bin/cc0 /usr/local/bin/cxx0
export LLVM_COMPILER=clang CC=/usr/local/bin/cc0 CXX=/usr/local/bin/cxx0
export SANITIZER=none FUZZING_ENGINE=libfuzzer FUZZING_LANGUAGE=c ARCHITECTURE=x86_64
compile > /tmp/build.log 2>&1 || true
gt="__GT__"
f=$(grep -rlE "^[A-Za-z_][A-Za-z0-9_ \t\*]*\b${gt}[ \t]*\(" /src --include=*.c 2>/dev/null \
    | grep -viE "fuzz|/tests?/" | head -1)
if [ -z "$f" ]; then echo "NO_FILE"; exit 0; fi
base=$(basename "${f%.*}")
bc=$(find /src -name ".${base}.o.bc" 2>/dev/null | head -1)
if [ -z "$bc" ]; then echo "NO_BC"; tail -2 /tmp/build.log; exit 0; fi
opt -passes=mem2reg -S "$bc" -o /tmp/o2.ll 2>/dev/null || { echo "NO_OPT"; exit 0; }
echo "FILE:$f"
echo "===LLSTART==="; base64 /tmp/o2.ll; echo "===LLEND==="
'''


def sh(args, timeout=600):
    try:
        return subprocess.run(args, capture_output=True, text=True, timeout=timeout)
    except (FileNotFoundError, subprocess.TimeoutExpired):
        class R:
            returncode, stdout, stderr = 1, "", ""
        return R()


def extract_ll(bug_id: str, gt: str, keep: bool) -> tuple[str, str] | None:
    """Return (source_file, ll_text) for the crash function's TU, or None."""
    img = f"n132/arvo:{bug_id}-vul"
    # long timeout: images are ~3 GB and bandwidth is limited; concurrent pulls share it, so
    # a pull can legitimately take many minutes. A too-short timeout mass-fails as "no-image".
    if sh(["docker", "pull", img], timeout=2500).returncode != 0:
        return None
    try:
        r = sh(["docker", "run", "--rm", img, "bash", "-c", _SCRIPT.replace("__GT__", gt)],
               timeout=900)
        out = r.stdout
        if "===LLSTART===" not in out:
            return None
        fmatch = re.search(r"^FILE:(.+)$", out, re.M)
        b64 = out.split("===LLSTART===", 1)[1].split("===LLEND===", 1)[0]
        ll = base64.b64decode(b64).decode(errors="ignore")
        return (fmatch.group(1) if fmatch else "?", ll)
    finally:
        if not keep:
            sh(["docker", "rmi", "-f", img], timeout=120)


def score(bug: dict, ll: str, srcfile: str) -> dict:
    gt = bug["crash_func"]
    res = {"id": bug["id"], "project": bug["project"], "gt_func": gt, "build_ok": True,
           "recall": "miss", "src": srcfile}
    funcs, _ = T.parse_ll(ll)
    names = {f.name for f in funcs}
    if gt not in names:
        res["recall"] = "gt-not-in-file"      # crash func not in this TU (e.g. C++/header)
        return res
    in_scope = any(f.name == gt and any(
        T.SINK_RE.search(i["raw"]) and _ir_var(i["raw"]) for i in f.insns) for f in funcs)
    if not in_scope:
        res["recall"] = "oos"
        return res
    cands = T.analyze_ll_text(ll, os.path.basename(srcfile))
    res["n_candidates"] = len(cands)
    res["recall"] = "hit" if gt in {c.get("func") for c in cands} else "miss"
    return res


def _ir_var(raw: str) -> bool:
    args = raw[raw.find("(") + 1:raw.rfind(")")].split(",") if "(" in raw else []
    return len(args) < 3 or "%" in args[2] or "@" in args[2]


def _one(b: dict, keep: bool) -> dict:
    ext = extract_ll(b["id"], b["crash_func"], keep)
    if ext is None:
        return {"id": b["id"], "project": b["project"], "build_ok": False,
                "recall": "no-image-or-build"}
    return score(b, ext[1], ext[0])


def main(argv=None):
    import threading
    from collections import Counter
    from concurrent.futures import ThreadPoolExecutor, as_completed
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest")
    ap.add_argument("--project", default=None)
    ap.add_argument("--ids", default=None)
    ap.add_argument("--limit", type=int, default=40)
    ap.add_argument("--jobs", type=int, default=12, help="parallel Docker builds")
    ap.add_argument("--keep-image", action="store_true")
    ap.add_argument("--out", default=None)
    ap.add_argument("--resume", action="store_true", help="skip bug ids already in --out")
    ap.add_argument("--cpp", action="store_true", help="also try C++-only bugs (default: skip)")
    args = ap.parse_args(argv)

    out = args.out or os.path.join(os.path.dirname(os.path.abspath(__file__)), "docker_results.json")
    bugs = [b for b in json.load(open(args.manifest))
            if b.get("has_var_sink") and not b["in_test_path"] and b.get("crash_func")]
    if not args.cpp:
        # the crash TU must be C (our detector is C-only); skip bugs whose fix touches no .c/.h
        # file, to avoid wasting a ~3 GB pull on a C++ crash function we can't score.
        bugs = [b for b in bugs if any(f["file"].endswith((".c", ".h")) for f in b["files"])]
    if args.project:
        projset = set(args.project.split(","))
        bugs = [b for b in bugs if b["project"] in projset]
    if args.ids:
        want = set(args.ids.split(","))
        bugs = [b for b in bugs if b["id"] in want]

    results = []
    done = set()
    if args.resume and os.path.exists(out):
        results = json.load(open(out))
        done = {r["id"] for r in results}
    bugs = [b for b in bugs if b["id"] not in done]
    # process project-by-project so consecutive pulls reuse the project's shared base layers
    # (same-project -vul images differ mostly in the source layer), cutting total download.
    bugs.sort(key=lambda b: (b["project"], b["id"]))
    bugs = bugs[:args.limit]
    print(f"# {len(bugs)} bugs to process ({len(done)} already done), jobs={args.jobs}", flush=True)

    lock = threading.Lock()

    def save():
        tmp = out + ".tmp"
        json.dump(results, open(tmp, "w"), indent=1)
        os.replace(tmp, out)

    with ThreadPoolExecutor(max_workers=args.jobs) as ex:
        futs = {ex.submit(_one, b, args.keep_image): b for b in bugs}
        n = 0
        for fut in as_completed(futs):
            r = fut.result()
            n += 1
            with lock:
                results.append(r)
                if n % 5 == 0 or r["recall"] in ("hit", "miss"):
                    save()
                sc = [x for x in results if x["recall"] in ("hit", "miss")]
                hh = sum(x["recall"] == "hit" for x in sc)
            print(f"  [{r['recall']:>16}] {r['id']} {r['project']} {r.get('gt_func','')}  "
                  f"| scorable={len(sc)} recall={hh}/{len(sc)}", flush=True)
    save()

    scor = [r for r in results if r["recall"] in ("hit", "miss")]
    hit = [r for r in scor if r["recall"] == "hit"]
    built = [r for r in results if r.get("build_ok")]
    print(f"\n## Docker route TOTAL: {len(results)} bugs, extracted {len(built)} "
          f"({len(built)/max(len(results),1)*100:.0f}%)  reasons={dict(Counter(r['recall'] for r in results))}")
    if scor:
        print(f"   FUNCTION-PRECISE RECALL: {len(hit)}/{len(scor)} ({len(hit)/len(scor)*100:.0f}%)  n={len(scor)}")
    print(f"results -> {out}")


if __name__ == "__main__":
    main()

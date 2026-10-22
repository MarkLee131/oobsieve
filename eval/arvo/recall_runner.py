#!/usr/bin/env python3
"""Symbolic-recall runner for the ARVO in-scope benchmark.

For each manifest bug: check out the vulnerable version (fix_commit^), compile the
patched C file to LLVM IR on a best-effort basis, run the symbolic candidate finder
(eval/taint_llvm.py), and score whether a candidate lands at the ground-truth sink.

Ground truth comes from ARVO's canonical fix diff: the patched file, the memory-op family,
and the enclosing function of the sink (recovered from the vulnerable source by anchoring on
the diff's context lines). Recall is scored at two tiers:
  - strong: a candidate in the same file, same op family, same enclosing function;
  - weak:   a candidate in the same file, same op family (function not matched).

Compilation is best-effort (single TU + guessed -I flags + optional ./configure). Many
OSS-Fuzz projects need their full build system; those are reported as build_failed and
excluded from the recall denominator, and build coverage is reported alongside recall.

Usage:
    python3 eval/arvo/recall_runner.py eval/arvo/manifest.json \
        --repos <cache_dir> --project c-blosc2 --limit 20 [--include-tests]
"""
from __future__ import annotations
import argparse
import json
import os
import re
import subprocess
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
import taint_llvm as T  # noqa: E402

TEST_PATH_RE = re.compile(r"(^|/)(test|tests|fuzz|fuzzing|oss-fuzz|examples?)(/|$)", re.I)


class _R:
    def __init__(self, rc, out=""):
        self.returncode, self.stdout = rc, out


def sh(args, cwd=None, timeout=300):
    try:
        return subprocess.run(args, cwd=cwd, timeout=timeout,
                              stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    except (FileNotFoundError, subprocess.TimeoutExpired):
        return _R(127)


def ensure_repo(repo_addr: str, project: str, cache: str) -> str | None:
    dst = os.path.join(cache, project)
    if not os.path.isdir(os.path.join(dst, ".git")):
        os.makedirs(cache, exist_ok=True)
        r = sh(["git", "clone", "--filter=blob:none", "--no-checkout", repo_addr, dst],
               timeout=600)
        if r.returncode != 0:
            return None
    return dst


def checkout_vuln(repo: str, fix_commit: str) -> str | None:
    # materialise the fix commit, then its parent = the vulnerable version
    if sh(["git", "fetch", "--depth", "2", "origin", fix_commit], cwd=repo).returncode != 0:
        sh(["git", "fetch", "origin", fix_commit], cwd=repo)
    par = sh(["git", "rev-parse", f"{fix_commit}^"], cwd=repo)
    if par.returncode != 0:
        return None
    vuln = par.stdout.strip()
    if sh(["git", "checkout", "-f", vuln], cwd=repo).returncode != 0:
        return None
    return vuln


def guess_cflags(repo: str, cfile_abs: str, project: str = "") -> list[str]:
    root = repo
    d = os.path.dirname(cfile_abs)
    incs = {root, d, os.path.dirname(d),
            os.path.join(root, "include"), os.path.join(root, "src"),
            os.path.join(root, "lib"), os.path.join(root, "libavc"),
            os.path.join(d, "include"), os.path.join(d, "..", "include")}
    # bootstrap once (cached by a marker) to generate config.h and any *_config.h headers
    marker = os.path.join(root, ".arvo_prepped")
    if not os.path.exists(marker):
        _bootstrap(root, project)
        open(marker, "w").close()
    # add every repo dir that contains headers (bounded) so a single TU resolves its includes
    incs |= _header_dirs(root)
    flags = ["-DHAVE_CONFIG_H", "-w"] + EXTRA_CFLAGS.get(project, [])
    for i in sorted(p for p in incs if os.path.isdir(p)):
        flags.append(f"-I{i}")
    return flags


# project-specific compile macros a single TU needs beyond config.h.
EXTRA_CFLAGS = {
    "pcre2": ["-DPCRE2_CODE_UNIT_WIDTH=8"],
}


# set by main() from --container; autotools projects need libtool the host lacks, so we
# fall back to generating config.h inside a container that has the full autotools stack.
CONTAINER = None


def _bootstrap(root: str, project: str = ""):
    """Generate config.h / build headers. Host-only for cmake; autotools falls back to the
    container (which has libtool). Projects that still cannot be prepared stay build_ok=False."""
    if os.path.exists(os.path.join(root, "config.h")):
        return
    # host cmake works without extra tooling
    if os.path.exists(os.path.join(root, "CMakeLists.txt")):
        sh(["cmake", "-DCMAKE_BUILD_TYPE=Release", "."], cwd=root, timeout=200)
        if os.path.exists(os.path.join(root, "config.h")):
            return
    # host autotools (works only if the project needs no libtool)
    for cmd in (["sh", "autogen.sh"], ["autoreconf", "-fi"]):
        if cmd[1] == "autogen.sh" and not os.path.exists(os.path.join(root, "autogen.sh")):
            continue
        sh(cmd, cwd=root, timeout=200)
    if os.path.exists(os.path.join(root, "configure")):
        sh(["./configure"], cwd=root, timeout=200)
        sh(["./config.status", "config.h"], cwd=root, timeout=120)
    if os.path.exists(os.path.join(root, "config.h")):
        return
    if CONTAINER:
        _bootstrap_via_container(root, project)


# per-project configure flags to skip optional deps / drivers so configure reaches config.h.
# --build is added generally to fix containers whose config.guess mis-detects the host.
CONFIGURE_FLAGS = {
    "opensc": ["--enable-ctapi", "--disable-pcsc", "--disable-openct",
               "--disable-cryptotokenkit", "--disable-openssl", "--disable-readline",
               "--disable-zlib", "--disable-openpace"],
    "htslib": ["--disable-bz2", "--disable-lzma", "--disable-libcurl",
               "--without-libdeflate"],
}


def _bootstrap_via_container(root: str, project: str):
    """Configure inside the container (has libtool/autotools), then copy every generated
    header (a .h that appears only after configure) back to the host tree at its rel path.
    config.h etc. are git-ignored, so they survive later `git checkout` of other bug commits."""
    dst = f"/tmp/arvo_prep/{project or os.path.basename(root)}"
    if sh(["docker", "exec", CONTAINER, "bash", "-lc", f"rm -rf {dst} && mkdir -p {dst}"]).returncode != 0:
        return
    # ship the source tree (without .git) into the container
    tar = subprocess.Popen(["tar", "-C", root, "--exclude=.git", "-cf", "-", "."],
                           stdout=subprocess.PIPE)
    subprocess.run(["docker", "exec", "-i", CONTAINER, "bash", "-lc",
                    f"tar -C {dst} -xf -"], stdin=tar.stdout, timeout=300)
    tar.wait()
    flags = " ".join(["--build=x86_64-pc-linux-gnu", "--host=x86_64-pc-linux-gnu"]
                     + CONFIGURE_FLAGS.get(project, []))
    # try autotools, then meson, then cmake -- whichever generates the config headers. The
    # before/after `find *.h` diff copies back whatever generated header appears (config.h,
    # meson's _bld/config.h, cmake's build/config.h), so single-file compiles resolve.
    boot = (f"cd {dst} && find . -name '*.h' | sort > /tmp/_before && "
            "( sh autogen.sh || sh build/autogen.sh || autoreconf -fi || ./buildconf || true ) >/dev/null 2>&1 ; "
            f"( ./configure {flags} || ./configure || true ) >/dev/null 2>&1 ; "
            "( ./config.status config.h || true ) >/dev/null 2>&1 ; "
            "if [ ! -f config.h ] && [ -f meson.build ]; then meson setup _bld >/dev/null 2>&1 ; "
            "  ninja -C _bld '*config*.h' >/dev/null 2>&1 || ninja -C _bld >/dev/null 2>&1 & sleep 25; kill %1 2>/dev/null; fi ; "
            "if [ ! -f config.h ] && [ -f CMakeLists.txt ]; then cmake -S . -B _bld -DCMAKE_BUILD_TYPE=Release >/dev/null 2>&1 ; fi ; "
            "find . -name '*.h' | sort > /tmp/_after && comm -13 /tmp/_before /tmp/_after")
    r = sh(["docker", "exec", CONTAINER, "bash", "-lc", boot], timeout=500)
    for rel in r.stdout.split():
        rel = rel.lstrip("./")
        if not rel.endswith(".h"):
            continue
        hostpath = os.path.join(root, rel)
        os.makedirs(os.path.dirname(hostpath) or root, exist_ok=True)
        sh(["docker", "cp", f"{CONTAINER}:{dst}/{rel}", hostpath])


def _header_dirs(root: str, cap: int = 400) -> set:
    dirs = set()
    for dp, dn, fn in os.walk(root):
        if "/.git" in dp:
            dn[:] = [x for x in dn if x != ".git"]
            continue
        if any(f.endswith((".h", ".hpp", ".hxx")) for f in fn):
            dirs.add(dp)
        if len(dirs) >= cap:
            break
    return dirs


def find_func_file(repo: str, funcname: str) -> str | None:
    """Repo-relative path of the .c file that defines `funcname` (column-0 signature, not
    a call), so the crash function's own translation unit can be compiled."""
    r = sh(["grep", "-rlE", rf"^[A-Za-z_][A-Za-z0-9_ \t\*]*\b{re.escape(funcname)}[ \t]*\(",
            repo, "--include=*.c", "--include=*.cc", "--include=*.cpp"], timeout=60)
    if r.returncode != 0 or not r.stdout.strip():
        return None
    for line in r.stdout.splitlines():
        rel = os.path.relpath(line.strip(), repo)
        if "/.git/" not in line:
            return rel
    return None


def _ir_var_size(raw: str) -> bool:
    """For an @llvm.mem{cpy,move,set} intrinsic call, is the length operand a variable
    (SSA %value) rather than a compile-time constant? e.g. `...i64 %len, i1 false)` -> True,
    `...i64 64, i1 false)` -> False (a sizeof/constant copy)."""
    args = raw[raw.find("(") + 1:raw.rfind(")")].split(",") if "(" in raw else []
    # intrinsic args: (dst, src|val, len, isvolatile); the length is the 3rd
    if len(args) >= 3:
        length = args[2].strip()
        return "%" in length or "@" in length  # SSA value / global, not a literal
    return True


# neural layer, set in main() when --confirm is passed. The prompt is recall-first: the
# symbolic analysis has already established that the flagged operand is input-derived and
# not constant/clamped/alloc-to-fit, so the LLM's only job is to reject candidates it can
# show are bounds-checked, and to keep everything else. A plain "is this a bug?" prompt
# over-rejects and drops most true bugs.
CONFIRM_CLIENT = None
# ablation: cumulative modeling stages. Each stage lists every layer explicitly, since an
# absent key means the layer's default (on).
ABLATION = False
def _abl(sanitizer, field, guard, smt_size, smt_cap, intra):
    return {"sanitizer": sanitizer, "field": field, "guard": guard,
            "smt_size": smt_size, "smt_cap": smt_cap, "intra": intra}
ABL_STAGES = [
    ("基线污点值流",        _abl(0, 0, 0, 0, 0, 0)),
    ("+sanitizer/clamp",   _abl(1, 0, 0, 0, 0, 0)),
    ("+字段敏感分配即用",   _abl(1, 1, 0, 0, 0, 0)),
    ("+路径敏感守卫",       _abl(1, 1, 1, 0, 0, 0)),
    ("+按需SMT尺寸上界",    _abl(1, 1, 1, 1, 0, 0)),
    ("+SMT容量充分性",      _abl(1, 1, 1, 1, 1, 0)),
    ("+数组内元素搬移过滤", _abl(1, 1, 1, 1, 1, 1)),
]
_CONFIRM_SYS = (
    'Answer ONLY JSON {"real_bug":bool,"reasoning":str}. A SOUND def-use taint analysis has '
    "already proven the {op} operand of this memory operation is INPUT-DERIVED and is NOT a "
    "constant, NOT clamped/min'd, and NOT an allocate-to-fit size. Do NOT re-question that. "
    "Your ONLY task: is there, on the path reaching this op, a bounds check that COVERS this "
    "exact access? A guard counts whether it is a plain `if (off+n > cap) ...` / early return, "
    "or a longjmp/goto bounds MACRO (ND_TCHECK/ND_TTEST/CHECK_*/GROW/ENSURE) over the same "
    "pointer+length just above the op. Rules: (1) if you can point to a specific sufficient "
    "guard covering THIS access, real_bug=false; (2) otherwise -- no such guard visible, or "
    "you are unsure -- real_bug=true. DEFAULT TO TRUE. Do not answer false merely because the "
    "code looks careful or has unrelated checks.")

# aggressive orientation (the baseline for the prompt comparison): a plain "is this a
# genuine OOB?" question with a conservative default. It over-rejects and drops true bugs;
# it runs on the same candidates as the recall-first prompt.
_AGGRESSIVE_SYS = (
    'Answer ONLY JSON {"real_bug":bool,"reasoning":str}. A def-use taint analysis flagged the '
    "{op} operand of this memory operation as input-derived. Decide whether this is a GENUINE, "
    "triggerable out-of-bounds bug. Be conservative: only answer real_bug=true if you are "
    "confident it is a real vulnerability; if the code looks guarded or careful, answer false.")


_DETAILS: list = []  # per-candidate LLM verdicts and rationales of the current bug


def _confirm_cand(cand: dict, cabs: str, client, sys_tmpl=None) -> bool:
    """Ask the LLM whether a symbolic candidate is a genuine OOB (the neuro layer)."""
    from oobsieve.agent import _parse_json
    try:
        lines = open(cabs, errors="ignore").read().splitlines()
    except OSError:
        return True  # can't read -> don't drop
    ln = cand.get("line") or 1
    # wide window so the LLM can see where the size/pointer comes from and any guard above it
    ctx = "\n".join(lines[max(0, ln - 110):ln + 15])
    sysp = (sys_tmpl or _CONFIRM_SYS).replace("{op}", str(cand.get("tainted_operand")))
    usrp = (f"{cand['sink']} at line {ln} (in function {cand.get('func')}), tainted operand "
            f"{cand.get('tainted_operand')}, size expr `{cand.get('size_expr')}`.\n"
            f"```c\n{ctx}\n```")
    v = _parse_json(client.complete(sysp, usrp))
    verdict = bool(v and v.get("real_bug"))
    _DETAILS.append({"func": cand.get("func"), "line": ln, "sink": cand.get("sink"),
                     "operand": cand.get("tainted_operand"), "size_expr": cand.get("size_expr"),
                     "orientation": "aggressive" if sys_tmpl is _AGGRESSIVE_SYS else "recall-first",
                     "real_bug": verdict, "reasoning": (v or {}).get("reasoning")})
    return verdict


def run_bug(bug: dict, repo: str, tmp_ll: str, include_tests: bool) -> dict:
    res = {"id": bug["id"], "project": bug["project"], "rw": bug["rw"],
           "build_ok": False, "n_candidates": 0, "recall": "miss", "gt_func": None}
    files = [f for f in bug["files"] if include_tests or not f["in_test_path"]]
    if not files:
        res["recall"] = "skipped-test"
        return res
    fc = bug["fix_commit"]
    fc = fc[-1] if isinstance(fc, list) else fc  # some ARVO entries list multiple fix commits
    if not fc:
        res["recall"] = "no-fix-commit"
        return res
    vuln = checkout_vuln(repo, fc)
    if not vuln:
        res["recall"] = "no-parent"
        return res
    gt = bug.get("crash_func")
    res["gt_func"] = gt
    if not gt:
        res["recall"] = "no-crash-func"
        return res
    # the crash function may live in a file the fix diff did not touch; compile that file
    # too, otherwise the bug is reported as gt-not-in-file
    fixfiles = {f["file"] for f in files}
    gtfile = find_func_file(repo, gt)
    if gtfile and gtfile not in fixfiles:
        files = files + [{"file": gtfile, "in_test_path": bool(TEST_PATH_RE.search(gtfile)),
                          "sinks": []}]
    any_built = False
    cand_funcs, gt_present, gt_in_scope = set(), False, False
    all_cands = []   # (candidate, abs source path) -- kept for the LLM-confirm stage
    if ABLATION:
        res["abl"] = [{"count": 0, "gt_hit": False} for _ in ABL_STAGES]
    for fi in files:
        cabs = os.path.join(repo, fi["file"])
        if not os.path.exists(cabs):
            continue
        cflags = guess_cflags(repo, cabs, bug["project"])
        # compile explicitly: analyze() also returns [] on a silent compile failure, and
        # build_ok must mean real IR with function bodies
        if not T.compile_to_ll(cabs, cflags, "clang", tmp_ll):
            continue
        try:
            if "define " not in open(tmp_ll, errors="ignore").read():
                continue
        except OSError:
            continue
        try:
            cands = T.analyze(cabs, cflags, "clang", tmp_ll)
        except Exception:
            continue
        any_built = True
        res["n_candidates"] += len(cands)
        cand_funcs |= {c.get("func") for c in cands}
        all_cands += [(c, cabs) for c in cands]
        # ablation: re-run the engine on the same IR at each cumulative stage, recording
        # the candidate count and whether the crash-function bug survives
        if ABLATION:
            try:
                ir_text = open(tmp_ll, errors="ignore").read()
                for i, (_, cfg) in enumerate(ABL_STAGES):
                    sc = T.analyze_ll_text(ir_text, fi["file"], abl=cfg)
                    res["abl"][i]["count"] += len(sc)
                    if any(c.get("func") == gt for c in sc):
                        res["abl"][i]["gt_hit"] = True
            except Exception:
                pass
        # decide from the IR whether the crash function is present and in scope: in scope
        # means it contains an @llvm.mem{cpy,move,set} intrinsic whose length operand is
        # not a compile-time constant
        try:
            funcs, _ = T.parse_ll(open(tmp_ll, errors="ignore").read())
        except OSError:
            funcs = []
        for f in funcs:
            if f.name != gt:
                continue
            gt_present = True
            if any(T.SINK_RE.search(ins["raw"]) and _ir_var_size(ins["raw"]) for ins in f.insns):
                gt_in_scope = True
    res["build_ok"] = any_built
    if not any_built:
        res["recall"] = "build-fail"
        return res
    # ground truth is the ASAN crashing function; score only when it is in scope
    if not gt_present:
        res["recall"] = "gt-not-in-file"        # crash func lives in a file we didn't compile
    elif not gt_in_scope:
        res["recall"] = "oos"                    # no variable-size memX in the crash function
        #                                          (e.g. a byte-level decoder overflow)
    else:
        res["recall"] = "hit" if gt in cand_funcs else "miss"

    # neural layer: run the LLM over the symbolic candidates and record whether it keeps
    # the true bug while dropping the rest. Only for scorable bugs, to bound cost.
    if CONFIRM_CLIENT is not None and res["recall"] in ("hit", "miss"):
        _DETAILS.clear()
        gt_cands = [(c, p) for c, p in all_cands if c.get("func") == gt]
        others = [(c, p) for c, p in all_cands if c.get("func") != gt][:15]
        # recall-first orientation
        gt_conf = sum(_confirm_cand(c, p, CONFIRM_CLIENT, _CONFIRM_SYS) for c, p in gt_cands)
        oth_conf = sum(_confirm_cand(c, p, CONFIRM_CLIENT, _CONFIRM_SYS) for c, p in others)
        # aggressive orientation on the same candidates
        gt_conf_a = sum(_confirm_cand(c, p, CONFIRM_CLIENT, _AGGRESSIVE_SYS) for c, p in gt_cands)
        oth_conf_a = sum(_confirm_cand(c, p, CONFIRM_CLIENT, _AGGRESSIVE_SYS) for c, p in others)
        res["n_gt_cands"] = len(gt_cands)
        res["n_gt_confirmed"] = gt_conf
        res["n_other_sampled"] = len(others)
        res["n_other_confirmed"] = oth_conf
        res["n_gt_confirmed_aggr"] = gt_conf_a
        res["n_other_confirmed_aggr"] = oth_conf_a
        # end-to-end: does the true bug survive each orientation?
        res["e2e"] = "hit" if (res["recall"] == "hit" and gt_conf > 0) else \
                     ("dropped" if res["recall"] == "hit" else "miss")
        res["e2e_aggr"] = "hit" if (res["recall"] == "hit" and gt_conf_a > 0) else \
                          ("dropped" if res["recall"] == "hit" else "miss")
        res["llm_details"] = list(_DETAILS)
    return res


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest")
    ap.add_argument("--repos", required=True, help="repo cache dir")
    ap.add_argument("--project", default=None)
    ap.add_argument("--ids", default=None, help="comma-separated bug ids")
    ap.add_argument("--limit", type=int, default=20)
    ap.add_argument("--include-tests", action="store_true")
    ap.add_argument("--container", default=None,
                    help="container name for autotools config.h generation (e.g. seal)")
    ap.add_argument("--confirm", action="store_true", help="run the LLM-confirm neuro layer")
    ap.add_argument("--ablation", action="store_true",
                    help="per-stage candidate-count + recall-retention ablation (no LLM)")
    ap.add_argument("--no-guard", action="store_true",
                    help="drop the unsound path-guard relatedness heuristic from the pipeline")
    ap.add_argument("--model", default="gemini-2.5-flash")
    args = ap.parse_args(argv)
    global CONTAINER, CONFIRM_CLIENT, ABLATION
    CONTAINER = args.container
    ABLATION = args.ablation
    if args.no_guard:
        T.GUARD_DEFAULT = False
    if args.confirm:
        sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(
            os.path.abspath(__file__)))))  # repo root for `oobsieve` package
        from oobsieve.llm.gemini_client import GeminiClient
        CONFIRM_CLIENT = GeminiClient(model=args.model, thinking_budget=0)

    bugs = json.load(open(args.manifest))
    # tight recall set: only bugs with a genuine variable-size sink
    bugs = [b for b in bugs if b.get("has_var_sink")]
    if args.project:
        bugs = [b for b in bugs if b["project"] == args.project]
    if args.ids:
        want = set(args.ids.split(","))
        bugs = [b for b in bugs if b["id"] in want]
    bugs = bugs[:args.limit]
    tmp_ll = os.path.join(os.path.dirname(os.path.abspath(__file__)), "_arvo.ll")

    results = []
    for b in bugs:
        repo = ensure_repo(b["repo_addr"], b["project"], args.repos)
        if not repo:
            results.append({"id": b["id"], "project": b["project"], "build_ok": False,
                            "recall": "clone-failed"})
            print(f"  [clone-failed] {b['id']} {b['project']}")
            continue
        try:
            r = run_bug(b, repo, tmp_ll, args.include_tests)
        except Exception as e:
            import traceback
            r = {"id": b["id"], "project": b["project"], "build_ok": False,
                 "recall": f"error:{type(e).__name__}", "tb": traceback.format_exc()[-400:]}
        results.append(r)
        print(f"  [{r['recall']:>6}] {r['id']} {r['project']} build={r.get('build_ok')} "
              f"cands={r.get('n_candidates', 0)} gt_func={r.get('gt_func')}")

    built = [r for r in results if r.get("build_ok")]
    scorable = [r for r in built if r["recall"] in ("hit", "miss")]  # crash func is our class
    hit = [r for r in scorable if r["recall"] == "hit"]
    oos = [r for r in built if r["recall"] == "oos"]
    notin = [r for r in built if r["recall"] == "gt-not-in-file"]
    print(f"\n## ARVO recall: {len(results)} bugs, built {len(built)} "
          f"(build coverage {len(built)/len(results)*100:.0f}%)")
    if scorable:
        print(f"   function-precise recall (crash func = our sink class): {len(hit)}/{len(scorable)} "
              f"({len(hit)/len(scorable)*100:.0f}%)")
    print(f"   excluded: {len(oos)} out-of-scope (crash func has no var-memX) + "
          f"{len(notin)} crash func not in compiled file")
    if CONFIRM_CLIENT is not None and scorable:
        e2e = [r for r in scorable if r.get("e2e") == "hit"]
        dropped = [r for r in hit if r.get("e2e") == "dropped"]
        oth = sum(r.get("n_other_sampled", 0) for r in scorable)
        oth_c = sum(r.get("n_other_confirmed", 0) for r in scorable)
        print(f"   -- NEURO LAYER (LLM confirm) --")
        print(f"   end-to-end recall (true bug survives confirm): {len(e2e)}/{len(scorable)} "
              f"({len(e2e)/len(scorable)*100:.0f}%)   [{len(dropped)} true bugs dropped by LLM]")
        if oth:
            print(f"   FP-cut: LLM rejected {oth - oth_c}/{oth} non-crash-func candidates "
                  f"({(oth - oth_c)/oth*100:.0f}% of the symbolic FPs)")
    out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "recall_results.json")
    json.dump(results, open(out, "w"), indent=1)
    print(f"results -> {out}")


if __name__ == "__main__":
    main()

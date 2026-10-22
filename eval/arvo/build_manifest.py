#!/usr/bin/env python3
"""Build the in-scope ARVO benchmark manifest for the intrinsic-memcpy OOB class.

ARVO (n132/ARVO-Meta) ships, per OSS-Fuzz bug, a meta JSON
(archive_data/meta/<id>.json: project, crash_type, sanitizer, fix_commit, repo_addr)
and the canonical fix diff (archive_data/patches/<id>.diff). This script filters to the
targeted bug class and extracts, from the fix diff, the ground-truth localisation the
recall runner scores against.

In-scope = all of:
  1. crash_type is a {Heap,Stack,Global}-buffer-overflow (READ or WRITE);
  2. the fix diff edits a C/C++ file;
  3. an intrinsic memory op (mem{cpy,move,set}, wmem*) appears on a context or removed
     line of the diff, i.e. the sink already exists in the vulnerable version
     (fix_commit^), which is what the detector analyses. A sink only on '+' lines was
     added by the fix and is not the bug site.

Each manifest record also flags fuzz/test-harness paths so the recall runner can exclude
them from the library-bug denominator if desired.

Usage:
    python3 eval/arvo/build_manifest.py <ARVO-Meta_dir> [-o manifest.json] [--project P]
"""
from __future__ import annotations
import argparse
import glob
import json
import os
import re
from collections import Counter

OOB_RE = re.compile(r"(Heap|Stack|Global)-buffer-overflow", re.I)
CRASH_STATE_RE = re.compile(r"Crash State:\s*\n(.*?)(?:\n\s*\n|\nSanitizer:)", re.S)
# frames to skip when picking the crashing project function (libc intrinsics / ASAN shims)
INTRINSIC_FRAME_RE = re.compile(r"^(_*asan|__interceptor|w?mem(cpy|move|set)$|"
                                r"MemcmpInterceptorCommon|strn?cpy$|strn?cat$)", re.I)
SINK_RE = re.compile(r"\bw?mem(cpy|move|set)\b")
NEWFILE_RE = re.compile(r"^\+\+\+ b/(.+?)\s*$")
HUNK_RE = re.compile(r"^@@ -\d+(?:,\d+)? \+(\d+)(?:,\d+)? @@\s*(.*)$")
TEST_PATH_RE = re.compile(r"(^|/)(test|tests|fuzz|fuzzing|oss-fuzz|examples?)(/|$)", re.I)
# best-effort C identifier the enclosing function is named by, from a hunk section header
FUNC_HINT_RE = re.compile(r"([A-Za-z_]\w*)\s*\(")


def crash_frames(meta: dict) -> list[str]:
    """The ASAN 'Crash State' stack frames (top first) from the OSS-Fuzz report."""
    for c in meta.get("report", {}).get("comments", []):
        m = CRASH_STATE_RE.search(c.get("content", ""))
        if m:
            return [ln.strip() for ln in m.group(1).splitlines() if ln.strip()]
    return []


def crash_func(frames: list[str]) -> str | None:
    """The crashing project function = first frame that is not a libc/ASAN intrinsic shim.
    (For a memcpy OOB, ASAN typically reports the CALLER as the top frame already.)"""
    for f in frames:
        name = f.split("(")[0].split()[0] if f else ""
        if name and not INTRINSIC_FRAME_RE.match(name) and not name.endswith(".c"):
            return name
    return None


def _size_arg(line: str, mstart: int) -> str | None:
    """Extract the 3rd (size) argument of a mem{cpy,move,set}(dst, ., size) call on `line`,
    starting from the sink match. Returns None if the call's parens don't close on the line."""
    i = line.find("(", mstart)
    if i < 0:
        return None
    depth, args, cur = 0, [], ""
    for ch in line[i:]:
        if ch == "(":
            depth += 1
            if depth == 1:
                continue
        elif ch == ")":
            depth -= 1
            if depth == 0:
                args.append(cur)
                return args[2].strip() if len(args) >= 3 else None
        if depth == 1 and ch == ",":
            args.append(cur); cur = ""
        else:
            cur += ch
    return None  # unbalanced -> multi-line call


def _is_const_size(size: str | None) -> bool:
    """A trivially safe size: sizeof(...) copies bounded by the type. Numeric/macro
    constants are not treated as const here, because a constant-size read off a tainted
    source pointer can still be OOB (e.g. libarchive rar FHD_LARGE)."""
    if not size:
        return False
    return bool(re.match(r"^\s*sizeof\b", size))


def parse_diff(text: str) -> list[dict]:
    """Return one record per C/C++ file whose diff has a memcpy-family sink present in the
    vulnerable version. Record: file, func_hint, sinks[{op,new_line}], in_test_path."""
    out = []
    cur_file = None
    new_ln = 0
    section = ""
    rec = None
    for line in text.splitlines():
        m = NEWFILE_RE.match(line)
        if m:
            if rec and rec["sinks"]:
                out.append(rec)
            cur_file = m.group(1)
            is_c = bool(re.search(r"\.(c|cc|cpp|cxx|h|hpp|hxx)$", cur_file))
            rec = {"file": cur_file, "func_hint": None, "sinks": [],
                   "in_test_path": bool(TEST_PATH_RE.search(cur_file))} if is_c else None
            continue
        if rec is None:
            continue
        h = HUNK_RE.match(line)
        if h:
            new_ln = int(h.group(1))
            section = h.group(2)
            continue
        tag = line[:1]
        if tag == "+":            # added by fix: advances new-file counter, not in vuln
            new_ln += 1
            continue
        # context (' ') or removed ('-'): present in the vulnerable version
        sm = SINK_RE.search(line)
        if sm:
            sizearg = _size_arg(line, sm.start())
            rec["sinks"].append({"op": sm.group(0), "new_line": new_ln if tag == " " else None,
                                 "size": sizearg, "const_size": _is_const_size(sizearg)})
            fh = FUNC_HINT_RE.search(section)
            if rec["func_hint"] is None and fh:
                rec["func_hint"] = fh.group(1)
        if tag == " ":
            new_ln += 1
        # '-' lines do not advance the new-file counter
    if rec and rec["sinks"]:
        out.append(rec)
    return out


def build(meta_dir: str, project: str | None = None) -> list[dict]:
    manifest = []
    patch_dir = os.path.join(os.path.dirname(meta_dir.rstrip("/")), "patches")
    for f in glob.glob(os.path.join(meta_dir, "*.json")):
        try:
            d = json.load(open(f))
        except Exception:
            continue
        if not OOB_RE.search(d.get("crash_type", "")):
            continue
        if project and d.get("project") != project:
            continue
        pf = os.path.join(patch_dir, f"{d['localId']}.diff")
        if not os.path.exists(pf):
            continue
        files = parse_diff(open(pf, errors="ignore").read())
        if not files:
            continue
        frames = crash_frames(d)
        manifest.append({
            "id": str(d["localId"]),
            "project": d.get("project"),
            "repo_addr": d.get("repo_addr"),
            "fix_commit": d.get("fix_commit"),
            "crash_type": d.get("crash_type"),
            "rw": "WRITE" if "WRITE" in d.get("crash_type", "") else "READ",
            "sanitizer": d.get("sanitizer"),
            "files": files,
            "in_test_path": all(fi["in_test_path"] for fi in files),
            # a genuine variable-size copy is present (not only sizeof-bounded memsets);
            # recall is measured on this tighter set.
            "has_var_sink": any(not s["const_size"] for fi in files for s in fi["sinks"]),
            # ground truth for recall: the crashing function from the ASAN stack.
            "crash_frames": frames[:4],
            "crash_func": crash_func(frames),
        })
    return manifest


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("arvo_meta", help="ARVO-Meta dir (contains archive_data/)")
    ap.add_argument("-o", "--out", default=None)
    ap.add_argument("--project", default=None)
    args = ap.parse_args(argv)

    meta_dir = os.path.join(args.arvo_meta, "archive_data", "meta")
    if not os.path.isdir(meta_dir):
        meta_dir = os.path.join(args.arvo_meta, "meta")
    manifest = build(meta_dir, args.project)
    lib = [m for m in manifest if not m["in_test_path"]]
    out = args.out or os.path.join(os.path.dirname(os.path.abspath(__file__)), "manifest.json")
    json.dump(manifest, open(out, "w"), indent=1)

    libvar = [m for m in lib if m["has_var_sink"]]
    print(f"in-scope bugs: {len(manifest)}  (library {len(lib)} / test-harness "
          f"{len(manifest) - len(lib)})")
    print(f"library with a VARIABLE-size sink (tight set, recall denominator): {len(libvar)}")
    rw = Counter(m["rw"] for m in lib)
    print(f"library READ/WRITE: {dict(rw)}")
    pc = Counter(m["project"] for m in lib)
    print(f"top library projects: {dict(pc.most_common(12))}")
    print(f"manifest -> {out}")


if __name__ == "__main__":
    main()

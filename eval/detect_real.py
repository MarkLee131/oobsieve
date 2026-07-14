#!/usr/bin/env python3
"""Neuro-symbolic vulnerability detection on a real C project.

Takes a value-flow specification (the kind SEAL infers from a security patch,
e.g. "an archive/attacker-controlled length must be bounds-checked before it is
used as the size argument of memcpy") and looks for peer implementations that
VIOLATE it in a real codebase. The symbolic half locates candidate sink sites
(memcpy/memmove/... calls); the neural half (Gemini) decides, for each site,
whether the size operand is attacker-controlled and unchecked -> a real OOB.

This does NOT need SEAL's ground truth and does not compare against SEAL.

Usage:
    GEMINI_API_KEY=... python3 eval/detect_real.py <src_dir> [--model gemini-2.5-pro]
        [--glob 'archive_read_support_format_*.c'] [--max N]
"""
from __future__ import annotations
import argparse
import glob
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# The value-flow spec under test (generalized from a SEAL-inferred spec:
# codec-dispatch interface, "Src Must Not Reach Sink: len field -> memcpy size").
SPEC = (
    "SPEC (value-flow property inferred from a security patch): For a data-parsing "
    "routine, a length/size/count value that originates from the input being parsed "
    "(file/archive/packet bytes, a header field, or a decompressed buffer) MUST be "
    "bounds-checked against the actual destination or source buffer size BEFORE it is "
    "used as the size argument of a memory operation (memcpy/memmove/memset/bcopy). "
    "A path where such an input-derived size reaches the memory operation without a "
    "correct bounds check is a VIOLATION (out-of-bounds read/write)."
)

SINK_RE = re.compile(r"\b(memcpy|memmove|memset|bcopy)\s*\(")
FUNC_START_RE = re.compile(r"^[A-Za-z_].*\)\s*$|^\{")


def enclosing_function(lines: list[str], idx: int) -> tuple[str, int]:
    """Return (source_of_enclosing_function, start_line_1indexed) for line idx."""
    # walk up to the nearest line that starts a function body: a '{' at col 0
    # preceded by a signature. Heuristic but adequate for libarchive style.
    start = idx
    depth = 0
    for i in range(idx, -1, -1):
        if lines[i].startswith("}"):
            depth += 1
        if lines[i] == "{" or (lines[i].startswith("{") and i > 0):
            if depth == 0:
                start = i
                # include the signature line(s) just above
                j = i - 1
                while j >= 0 and lines[j].strip() and not lines[j].rstrip().endswith((";", "}", "{")):
                    j -= 1
                start = j + 1
                break
            depth -= 1
    # find matching end brace
    end = idx
    d = 0
    started = False
    for i in range(start, len(lines)):
        d += lines[i].count("{") - lines[i].count("}")
        if "{" in lines[i]:
            started = True
        if started and d <= 0:
            end = i
            break
    src = "\n".join(lines[start:end + 1])
    return src, start + 1


_SYS = (
    "You are a precise C security auditor. You are given a value-flow SPEC and one "
    "function from a real C project containing a memory-operation call. Decide ONLY "
    "whether THIS function violates the spec at the indicated call. Do not invent "
    "issues unrelated to the spec. Respond ONLY with JSON: "
    '{"violation":bool,"input_derived_size":bool,"bounds_checked":bool,'
    '"real_bug":bool,"severity":"none|low|medium|high","reasoning":str}'


)


def build_prompt(func_src: str, sink_line: str, file: str) -> tuple[str, str]:
    user = (
        f"{SPEC}\n\nFILE: {file}\nMEMORY OP OF INTEREST: {sink_line.strip()}\n\n"
        f"FUNCTION:\n```c\n{func_src}\n```\n\n"
        "Does this function violate the spec at that memory op? Consider whether the "
        "size operand is derived from parsed input and whether a correct bounds check "
        "guards it on all paths."
    )
    return _SYS, user


def _parse(raw: str) -> dict:
    # reuse the hardened parser from the neuro layer (scans for the first
    # decodable JSON object; never raises).
    from patchintent.agent import _parse_json
    return _parse_json(raw)


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("src_dir")
    ap.add_argument("--glob", default="archive_read_support_format_*.c")
    ap.add_argument("--model", default="gemini-2.5-pro")
    ap.add_argument("--max", type=int, default=40, help="max sink sites to check")
    args = ap.parse_args(argv)
    if not (os.environ.get("GEMINI_API_KEY") or os.environ.get("GOOGLE_API_KEY")):
        sys.exit("GEMINI_API_KEY (or GOOGLE_API_KEY) is not set.")
    from patchintent.llm.gemini_client import GeminiClient
    client = GeminiClient(model=args.model)

    files = sorted(glob.glob(os.path.join(args.src_dir, "**", args.glob), recursive=True))
    # collect candidate sink sites
    candidates = []
    for f in files:
        lines = open(f, errors="ignore").read().splitlines()
        for i, ln in enumerate(lines):
            if SINK_RE.search(ln):
                # skip obviously-constant sizes (heuristic): sizeof( with a type
                candidates.append((f, i, ln))
    print(f"# scanned {len(files)} files, {len(candidates)} memory-op sites; "
          f"checking up to {args.max}\n")

    violations = []
    checked = 0
    for f, i, ln in candidates:
        if checked >= args.max:
            break
        checked += 1
        lines = open(f, errors="ignore").read().splitlines()
        func_src, fstart = enclosing_function(lines, i)
        if len(func_src) > 12000:
            func_src = func_src[:12000]
        system, user = build_prompt(func_src, ln, os.path.basename(f))
        try:
            verdict = _parse(client.complete(system, user))
        except Exception as e:  # one bad response must not abort the batch
            print(f"[skip] {os.path.basename(f)}:{i + 1} ({type(e).__name__})")
            continue
        if verdict.get("violation") and verdict.get("real_bug"):
            rec = {"file": os.path.basename(f), "line": i + 1,
                   "op": ln.strip()[:80], "severity": verdict.get("severity"),
                   "reasoning": verdict.get("reasoning", "")}
            violations.append(rec)
            print(f"[VIOLATION] {rec['file']}:{rec['line']}  sev={rec['severity']}")
            print(f"    op: {rec['op']}")
            print(f"    {rec['reasoning']}\n")

    print(f"## summary: {len(violations)} candidate real bugs out of {checked} sites checked")
    out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "detect_real_findings.json")
    json.dump(violations, open(out, "w"), indent=1)
    print(f"findings -> {out}")


if __name__ == "__main__":
    main()

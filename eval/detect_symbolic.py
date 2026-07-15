#!/usr/bin/env python3
"""Self-built neuro-symbolic detector (no Clearblue, no LLVM 3.6).

Symbolic layer (libclang AST, intraprocedural):
  - find sink call-sites (memcpy/memmove/memset/strcpy/strncpy/...),
  - extract the size/length argument and the variables it depends on,
  - detect whether a guarding condition (an `if` comparing those variables to a
    bound, dominating the call) exists before the sink,
  - flag sinks whose size is input-derived (parameter / struct field / read-like
    call) AND unguarded  ->  candidate out-of-bounds.

Neural layer (optional): Gemini confirms each symbolic candidate semantically.

Usage:
    python3 eval/detect_symbolic.py <src_dir> [--glob '*.c'] [--libclang PATH]
        [--confirm] [--model gemini-2.5-flash] [--cflags '-I. -DHAVE_CONFIG_H']
"""
from __future__ import annotations
import argparse
import glob
import json
import os
import sys

import clang.cindex as CI

SINKS = {  # sink name -> size argument index (0-based)
    "memcpy": 2, "memmove": 2, "memset": 2, "bcopy": 2,
    "strncpy": 2, "strncat": 2, "memccpy": 3,
}

# name substrings that suggest a value comes from parsed input
INPUT_HINTS = ("read_ahead", "read_bytes", "getc", "fread", "header", "_le", "_be",
               "decode", "avail", "packed", "unp_", "->len", "->size", "->length",
               "block", "count", "num", "buff")


def _find_libclang():
    for p in ("/usr/lib/x86_64-linux-gnu/libclang-15.so.1",
              "/usr/lib/x86_64-linux-gnu/libclang-14.so.1",
              "/usr/lib/llvm-15/lib/libclang.so.1",
              "/usr/lib/llvm-14/lib/libclang.so.1"):
        if os.path.exists(p):
            return p
    return None


def descendants(cur):
    for c in cur.get_children():
        yield c
        yield from descendants(c)


def refs_in(cur) -> set[str]:
    """variable/field names referenced under a cursor (the size expression)."""
    names = set()
    for c in descendants(cur):
        if c.kind in (CI.CursorKind.DECL_REF_EXPR, CI.CursorKind.MEMBER_REF_EXPR):
            if c.spelling:
                names.add(c.spelling)
    if cur.spelling:
        names.add(cur.spelling)
    return names


def enclosing_function(cur):
    p = cur.semantic_parent
    while p is not None and p.kind != CI.CursorKind.FUNCTION_DECL:
        p = p.semantic_parent
    return p


def guards_before(func, call_line: int, size_vars: set[str]) -> bool:
    """Is there an `if` (or a bounds return) before call_line whose condition
    references any size variable? A dominating guard heuristic."""
    for c in descendants(func):
        if c.kind == CI.CursorKind.IF_STMT:
            cond = next(c.get_children(), None)
            if cond is None:
                continue
            if c.extent.start.line <= call_line and (refs_in(cond) & size_vars):
                return True
    return False


def size_is_input_derived(func, size_vars: set[str], size_text: str) -> bool:
    # a size that is a parameter, a struct field access, or assigned from a
    # read-/decode-like call is treated as input-derived.
    if any(h in size_text for h in INPUT_HINTS):
        return True
    params = {p.spelling for p in func.get_arguments()}
    if size_vars & params:
        return True
    # look for `size_var = <call>(...)` or `size_var = a->b` assignments in func
    for c in descendants(func):
        if c.kind == CI.CursorKind.BINARY_OPERATOR:
            toks = [t.spelling for t in c.get_tokens()]
            if "=" in toks:
                lhs = toks[0]
                if lhs in size_vars and (
                        any(h in " ".join(toks) for h in INPUT_HINTS) or "->" in toks):
                    return True
    return False


def analyze_file(path: str, cflags: list[str]) -> list[dict]:
    index = CI.Index.create()
    try:
        tu = index.parse(path, args=cflags)
    except CI.TranslationUnitLoadError:
        return []
    base = os.path.basename(path)
    findings = []
    # iterate function DEFINITIONS in this file; the enclosing function is then
    # known by construction (semantic_parent is unreliable for expressions).
    funcs = [c for c in tu.cursor.get_children()
             if c.kind == CI.CursorKind.FUNCTION_DECL and c.is_definition()
             and c.location.file is not None
             and os.path.basename(str(c.location.file)) == base]
    for func in funcs:
        for cur in descendants(func):
            if cur.kind != CI.CursorKind.CALL_EXPR:
                continue
            callee = cur.spelling
            if callee not in SINKS:
                continue
            if cur.location.file is None or os.path.basename(str(cur.location.file)) != base:
                continue
            args = [a for a in cur.get_arguments()]
            idx = SINKS[callee]
            if idx >= len(args):
                continue
            size_arg = args[idx]
            size_text = " ".join(t.spelling for t in size_arg.get_tokens()).strip()
            ptr_args = [a for j, a in enumerate(args) if j != idx and j < 2]
            ptr_tokens = [[t.spelling for t in a.get_tokens()] for a in ptr_args]
            ptr_texts = [" ".join(toks) for toks in ptr_tokens]

            # SOUND SKIP: definitely safe = constant/sizeof size AND no pointer arithmetic.
            # Match arithmetic on exact TOKENS so member access "->" doesn't count as "-".
            size_const = size_text.isdigit() or size_text.startswith("sizeof")
            ptr_arith = any(tok in ("+", "-", "[") for toks in ptr_tokens for tok in toks)
            if size_const and not ptr_arith:
                continue

            # facts for the neural layer
            rel_vars = refs_in(size_arg)
            for a in ptr_args:
                rel_vars |= refs_in(a)
            guarded = guards_before(func, cur.location.line, rel_vars)
            input_derived = (not size_const) and size_is_input_derived(func, rel_vars, size_text)
            findings.append({
                "file": os.path.basename(path),
                "line": cur.location.line,
                "func": func.spelling,
                "sink": callee,
                "size_arg": size_text[:80],
                "ptr_args": [t[:60] for t in ptr_texts],
                "input_derived_size": input_derived,
                "pointer_arithmetic": ptr_arith,
                "guarded": guarded,
            })
    return findings


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("src_dir")
    ap.add_argument("--glob", default="archive_read_support_format_*.c")
    ap.add_argument("--libclang", default=None,
                    help="explicit libclang .so; default: auto (pip libclang bundle)")
    ap.add_argument("--cflags", default="-I. -DHAVE_CONFIG_H")
    ap.add_argument("--confirm", action="store_true", help="LLM-confirm each candidate")
    ap.add_argument("--model", default="gemini-2.5-flash")
    args = ap.parse_args(argv)
    if args.libclang:
        CI.Config.set_library_file(args.libclang)

    cflags = args.cflags.split()
    # resolve -I relative to src_dir so headers are found
    cflags = [(f"-I{os.path.join(args.src_dir, a[2:])}" if a.startswith("-I") and not os.path.isabs(a[2:]) else a)
              for a in cflags] + [f"-I{args.src_dir}"]

    files = sorted(glob.glob(os.path.join(args.src_dir, "**", args.glob), recursive=True))
    all_findings = []
    for f in files:
        all_findings.extend(analyze_file(f, cflags))
    print(f"# symbolic layer: {len(files)} files -> {len(all_findings)} unguarded "
          f"input-derived sink candidates\n")

    client = None
    if args.confirm:
        sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        from patchintent.llm.gemini_client import GeminiClient
        from patchintent.agent import _parse_json
        client = GeminiClient(model=args.model)

    confirmed = []
    for fd in all_findings:
        line = f"[CAND] {fd['file']}:{fd['line']} {fd['func']}  {fd['sink']}(size={fd['size_arg']})"
        if not client:
            print(line)
            continue
        src_path = os.path.join(args.src_dir, fd["file"])
        lines = open(src_path, errors="ignore").read().splitlines()
        lo, hi = max(0, fd["line"] - 40), min(len(lines), fd["line"] + 5)
        ctx = "\n".join(lines[lo:hi])
        sys_p = ('Answer ONLY JSON {"real_bug":bool,"reasoning":str}. A symbolic '
                 "analysis flagged an input-derived size reaching a memory op without "
                 "a bounds check. Confirm whether it is a genuine out-of-bounds bug.")
        usr = f"{fd['sink']} at line {fd['line']}, size `{fd['size_arg']}`.\n```c\n{ctx}\n```"
        v = _parse_json(client.complete(sys_p, usr))
        if v.get("real_bug"):
            fd["reasoning"] = v.get("reasoning", "")
            confirmed.append(fd)
            print(f"{line}\n    CONFIRMED: {fd['reasoning'][:240]}")
        else:
            print(f"{line}\n    (llm: not a bug)")

    out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "detect_symbolic_findings.json")
    json.dump(confirmed if client else all_findings, open(out, "w"), indent=1)
    print(f"\n## {len(confirmed) if client else len(all_findings)} "
          f"{'confirmed' if client else 'symbolic'} findings -> {out}")


if __name__ == "__main__":
    main()

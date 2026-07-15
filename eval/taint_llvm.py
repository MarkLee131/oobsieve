#!/usr/bin/env python3
"""LLVM def-use taint analysis for candidate discovery (self-built, Clearblue-free).

Compiles C to LLVM IR (modern clang, SSA form), then does a real intraprocedural
forward def-use taint:
  - SOURCES: function arguments, and return values of input-reading calls
    (__archive_read_ahead, fread, read, archive_le*dec, ...).
  - PROPAGATION: a value is tainted if any operand is tainted (SSA def-use);
    iterated to a fixpoint (covers add/mul/load/getelementptr/zext/trunc/phi/...).
  - SINKS: llvm.memcpy/memmove/memset where the size operand OR a pointer operand
    is tainted -> candidate out-of-bounds (input-derived size, or input-offset
    pointer). Debug metadata maps each sink back to a source line.

This replaces the AST token heuristic with genuine value-flow. Candidates then go
to the neural layer (Gemini) for confirmation.

Usage:
    python3 eval/taint_llvm.py <src_dir> [--glob '*.c'] [--cflags '...']
        [--clang clang] [--confirm] [--model gemini-2.5-flash]
"""
from __future__ import annotations
import argparse
import glob
import json
import os
import re
import subprocess
import sys

VALRE = re.compile(r"%[\w.]+")
INPUT_FNS = ("__archive_read_ahead", "__archive_read_consume", "fread", "read",
             "archive_le16dec", "archive_le32dec", "archive_le64dec", "getc",
             "archive_be16dec", "archive_be32dec", "archive_be64dec")
SINK_RE = re.compile(r"@(llvm\.(memcpy|memmove|memset)[\w.]*)")


class Func:
    __slots__ = ("name", "args", "insns")
    def __init__(self, name):
        self.name = name
        self.args: list[str] = []
        # each insn: dict(result, ops, opcode, dbg, raw)
        self.insns: list[dict] = []


def compile_to_ll(c_file: str, cflags: list[str], clang: str, out: str,
                  opt: str = "opt") -> bool:
    # -O0 keeps every memcpy/memset intrinsic and faithful source lines; mem2reg
    # alone promotes scalar allocas to SSA so def-use taint flows through registers
    # (without the reordering/lowering that -O1 would do).
    o0 = out + ".o0.ll"
    r1 = subprocess.run(
        [clang, "-O0", "-Xclang", "-disable-O0-optnone", "-g", "-S", "-emit-llvm",
         *cflags, c_file, "-o", o0], capture_output=True, text=True)
    if r1.returncode != 0 or not os.path.exists(o0):
        return False
    r2 = subprocess.run([opt, "-passes=mem2reg", "-S", o0, "-o", out],
                        capture_output=True, text=True)
    return r2.returncode == 0 and os.path.exists(out)


def parse_ll(text: str):
    # dbg id -> line
    dbg = {}
    for m in re.finditer(r"^!(\d+) = !DILocation\(line: (\d+)", text, re.M):
        dbg[m.group(1)] = int(m.group(2))
    funcs = []
    cur = None
    for line in text.splitlines():
        if line.startswith("define "):
            m = re.match(r"define .*?@([\w.]+)\(", line)
            cur = Func(m.group(1) if m else "?")
            # args = %-values inside the outer parameter list
            paren = line[line.find("(") + 1: line.rfind(")")] if "(" in line else ""
            cur.args = VALRE.findall(paren)
            funcs.append(cur)
            continue
        if cur is not None and line == "}":
            cur = None
            continue
        if cur is None or not line.strip():
            continue
        s = line.strip()
        result = None
        rhs = s
        mm = re.match(r"(%[\w.]+)\s*=\s*(.*)$", s)
        if mm:
            result, rhs = mm.group(1), mm.group(2)
        dbgm = re.search(r"!dbg !(\d+)", s)
        ops = [v for v in VALRE.findall(rhs) if v != result]
        opcode = rhs.split()[0] if rhs.split() else ""
        cur.insns.append({"result": result, "ops": ops, "opcode": opcode,
                          "dbg": dbgm.group(1) if dbgm else None, "raw": s})
    return funcs, dbg


def taint_function(f: Func) -> set[str]:
    tainted = set(f.args)
    # seed: return of input-reading calls
    for ins in f.insns:
        if ins["result"] and "call" in ins["opcode"] and any(
                fn in ins["raw"] for fn in INPUT_FNS):
            tainted.add(ins["result"])
    # forward fixpoint over def-use
    changed = True
    while changed:
        changed = False
        for ins in f.insns:
            r = ins["result"]
            if not r or r in tainted:
                continue
            if any(o in tainted for o in ins["ops"]):
                tainted.add(r)
                changed = True
    return tainted


def bounded_values(f: Func) -> set[str]:
    """Values that have been SANITIZED so their magnitude is bounded: results of a
    clamp (a phi/select merging a value with a cap: `if (l > b) l = b`), a min
    intrinsic, or a bit-mask (`and`), plus width-casts of those. A sink whose size
    operand is bounded is not an input-controlled overflow."""
    bounded = set()
    for ins in f.insns:
        r = ins["result"]
        if not r:
            continue
        raw, op = ins["raw"], ins["opcode"]
        # a phi/select on a size value is (at -O0+mem2reg) the clamp idiom's merge;
        # a min intrinsic or an AND-mask likewise caps the value.
        if op in ("phi", "select") or "llvm.umin" in raw or "llvm.smin" in raw \
                or op == "and":
            bounded.add(r)
    changed = True
    while changed:
        changed = False
        for ins in f.insns:
            r = ins["result"]
            if not r or r in bounded:
                continue
            if ins["opcode"] in ("sext", "zext", "trunc") and any(
                    o in bounded for o in ins["ops"]):
                bounded.add(r)
                changed = True
    return bounded


def alloc_size_roots(f: Func) -> set[str]:
    """Values used as (or one step feeding) the size argument of malloc/calloc/
    realloc in this function. If a sink's size equals such a value, the destination
    was allocated to fit -> not an overflow (malloc-to-fit)."""
    roots = set()
    for ins in f.insns:
        if "call" not in ins["opcode"]:
            continue
        if not any(a in ins["raw"] for a in ("@malloc", "@calloc", "@realloc")):
            continue
        for v in ins["ops"]:
            roots.add(v)
            for i2 in f.insns:  # expand one level: `len+1 -> len`
                if i2["result"] == v:
                    roots.update(i2["ops"])
    return roots


def _memcpy_args(raw: str):
    # inside the outer (...) of the intrinsic call, split top-level commas
    inner = raw[raw.find("(") + 1: raw.rfind(")")]
    args, depth, cur = [], 0, ""
    for ch in inner:
        if ch in "([": depth += 1
        elif ch in ")]": depth -= 1
        if ch == "," and depth == 0:
            args.append(cur); cur = ""
        else:
            cur += ch
    if cur.strip():
        args.append(cur)
    return args  # [dst, src, size, ...]


def find_candidates(f: Func, tainted: set[str], bounded: set[str],
                    dbg: dict) -> list[dict]:
    alloc_roots = alloc_size_roots(f)
    out = []
    for ins in f.insns:
        m = SINK_RE.search(ins["raw"])
        if not m:
            continue
        sink = m.group(2)
        args = _memcpy_args(ins["raw"])
        if len(args) < 3:
            continue
        dst_v = VALRE.findall(args[0])
        src_v = VALRE.findall(args[1]) if len(args) > 1 else []
        size_v = VALRE.findall(args[2])
        size_tainted = any(v in tainted for v in size_v)
        dst_tainted = any(v in tainted for v in dst_v)
        src_tainted = any(v in tainted for v in src_v)
        # SANITIZER MODEL: a size CLAMPED (through a min/phi/mask against a bound) is
        # safe. A merely CONSTANT size is NOT "clamped": a constant-size READ from a
        # tainted pointer with an unbounded offset is still OOB (e.g. p+4 past end).
        size_clamped = bool(size_v) and all(v in bounded for v in size_v)
        # malloc-to-fit: the destination buffer was allocated with this same size.
        if size_v and any(v in alloc_roots for v in size_v):
            continue

        why = []
        # unbounded input-derived size -> overflow
        if size_tainted and not size_clamped:
            why.append("size")
        # OOB read from an input-derived source pointer, unless the copied amount is
        # clamped to the source's available bytes.
        if src_tainted and not size_clamped:
            why.append("src-ptr")
        # fixed/clamped-size write to an input-derived destination is normally an
        # in-bounds field write; only flag dst when the size is also unbounded.
        if dst_tainted and size_tainted and not size_clamped:
            why.append("dst-ptr")
        if not why:
            continue
        out.append({
            "func": f.name, "sink": sink,
            "line": dbg.get(ins["dbg"]),
            "tainted_operand": "+".join(why),
            "size_expr": args[2].strip()[:50],
        })
    return out


def analyze(c_file: str, cflags: list[str], clang: str, ll_out: str) -> list[dict]:
    if not compile_to_ll(c_file, cflags, clang, ll_out):
        return []
    text = open(ll_out, errors="ignore").read()
    funcs, dbg = parse_ll(text)
    findings = []
    for f in funcs:
        t = taint_function(f)
        b = bounded_values(f)
        for c in find_candidates(f, t, b, dbg):
            c["file"] = os.path.basename(c_file)
            findings.append(c)
    # dedup by (file,line,operand)
    seen, uniq = set(), []
    for c in findings:
        k = (c["file"], c["line"], c["tainted_operand"])
        if k not in seen:
            seen.add(k); uniq.append(c)
    return uniq


def main(argv=None):
    ap = argparse.ArgumentParser()
    ap.add_argument("src_dir")
    ap.add_argument("--glob", default="archive_read_support_format_*.c")
    ap.add_argument("--cflags", default="-DHAVE_CONFIG_H")
    ap.add_argument("--clang", default="clang")
    ap.add_argument("--confirm", action="store_true")
    ap.add_argument("--model", default="gemini-2.5-flash")
    args = ap.parse_args(argv)

    cflags = args.cflags.split() + [f"-I{args.src_dir}", f"-I{os.path.dirname(args.src_dir)}"]
    files = sorted(glob.glob(os.path.join(args.src_dir, "**", args.glob), recursive=True))
    tmp_ll = os.path.join(os.path.dirname(os.path.abspath(__file__)), "_tmp.ll")
    all_c = []
    for fpath in files:
        all_c.extend(analyze(fpath, cflags, args.clang, tmp_ll))
    print(f"# LLVM def-use taint: {len(files)} files -> {len(all_c)} "
          f"tainted-reaches-sink candidates\n")

    client = _parse = None
    if args.confirm:
        sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
        from patchintent.llm.gemini_client import GeminiClient
        from patchintent.agent import _parse_json as _parse
        client = GeminiClient(model=args.model)

    confirmed = []
    for c in all_c:
        head = (f"[CAND] {c['file']}:{c['line']} {c['func']}  {c['sink']} "
                f"(tainted={c['tainted_operand']}, size={c['size_expr']})")
        if not client:
            print(head); continue
        src = os.path.join(args.src_dir, c["file"])
        lines = open(src, errors="ignore").read().splitlines()
        ln = c["line"] or 1
        ctx = "\n".join(lines[max(0, ln - 40):ln + 4])
        sysp = ('Answer ONLY JSON {"real_bug":bool,"reasoning":str}. A def-use taint '
                "analysis proved an attacker/input-derived value reaches the flagged "
                f"memory operation's {c['tainted_operand']} operand. Decide if this is a "
                "genuine out-of-bounds. IMPORTANT: a memory op with a COMPILE-TIME "
                "CONSTANT size (a literal or sizeof(...)) writing into a field of an "
                "already-allocated struct/array is NOT a bug merely because the "
                "destination pointer is input-derived — reject those. Flag real_bug=true "
                "ONLY when an input-derived SIZE can exceed the destination buffer, OR an "
                "input-derived offset makes the pointer read/write past a buffer end, AND "
                "no correct bounds check guards it on all paths. Be conservative: default "
                "real_bug=false unless you can name the specific missing check.")
        usrp = f"{c['sink']} at line {ln}, tainted operand: {c['tainted_operand']}.\n```c\n{ctx}\n```"
        v = _parse(client.complete(sysp, usrp))
        if v.get("real_bug"):
            c["reasoning"] = v.get("reasoning", "")
            confirmed.append(c)
            print(f"{head}\n    CONFIRMED: {c['reasoning'][:220]}")
        else:
            print(f"{head}\n    (llm: not a bug)")

    out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "taint_findings.json")
    json.dump(confirmed if client else all_c, open(out, "w"), indent=1)
    print(f"\n## {len(confirmed) if client else len(all_c)} "
          f"{'confirmed' if client else 'candidate'} findings -> {out}")


if __name__ == "__main__":
    main()

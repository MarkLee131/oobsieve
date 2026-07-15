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

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import smt_path  # noqa: E402  (on-demand SMT path-condition solver)

VALRE = re.compile(r"%[\w.]+")
INPUT_FNS = ("__archive_read_ahead", "__archive_read_consume", "fread", "read",
             "archive_le16dec", "archive_le32dec", "archive_le64dec", "getc",
             "archive_be16dec", "archive_be32dec", "archive_be64dec")
SINK_RE = re.compile(r"@(llvm\.(memcpy|memmove|memset)[\w.]*)")


class Func:
    __slots__ = ("name", "args", "insns", "blocks", "entry")
    def __init__(self, name):
        self.name = name
        self.args: list[str] = []
        # each insn: dict(result, ops, opcode, dbg, raw, block)
        self.insns: list[dict] = []
        # label -> {cond, succs, true, false}
        self.blocks: dict = {}
        self.entry: str = "entry"


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


_LABEL_RE = re.compile(r"^([\w.]+):")


def parse_ll(text: str):
    # dbg id -> line
    dbg = {}
    for m in re.finditer(r"^!(\d+) = !DILocation\(line: (\d+)", text, re.M):
        dbg[m.group(1)] = int(m.group(2))
    funcs = []
    cur = None
    block = None  # current basic-block label
    for line in text.splitlines():
        if line.startswith("define "):
            m = re.match(r"define .*?@([\w.]+)\(", line)
            cur = Func(m.group(1) if m else "?")
            paren = line[line.find("(") + 1: line.rfind(")")] if "(" in line else ""
            cur.args = VALRE.findall(paren)
            funcs.append(cur)
            block = "entry"
            cur.blocks[block] = {"cond": None, "succs": [], "true": None, "false": None}
            cur.entry = block
            continue
        if cur is not None and line == "}":
            cur = None
            block = None
            continue
        if cur is None or not line.strip():
            continue
        # basic-block label (e.g. "12:   ; preds = %8")
        lm = _LABEL_RE.match(line)
        if lm and not line.strip().startswith(("%", ";")):
            block = lm.group(1)
            cur.blocks.setdefault(block, {"cond": None, "succs": [],
                                          "true": None, "false": None})
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
                          "dbg": dbgm.group(1) if dbgm else None, "raw": s,
                          "block": block})
        # terminator -> record successors / branch condition for the block
        if opcode == "br":
            labels = re.findall(r"label %([\w.]+)", s)
            b = cur.blocks[block]
            if s.startswith("br i1"):  # conditional
                b["cond"] = ops[0] if ops else None
                if len(labels) >= 2:
                    b["true"], b["false"] = labels[0], labels[1]
                    b["succs"] = [labels[0], labels[1]]
            else:
                b["succs"] = labels
        elif opcode == "switch":
            b = cur.blocks[block]
            b["succs"] = re.findall(r"label %([\w.]+)", s)
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


_DBG_RE = re.compile(r",? *!dbg !\d+.*$")


def _insmap(f: Func) -> dict:
    return {ins["result"]: ins for ins in f.insns if ins["result"]}


def value_sig(val: str, insmap: dict, memo: dict, depth: int = 0) -> str:
    """FIELD-SENSITIVE value signature: normalize the defining expression, replacing
    each operand with its own signature recursively. Two loads of the SAME struct
    field (same base + same GEP field path) get identical signatures even though they
    are different SSA values -- so `malloc(x->f)` and `memcpy(..., x->f)` match."""
    if val in memo:
        return memo[val]
    if depth > 8 or val not in insmap:
        return val  # argument, constant, or too deep
    memo[val] = val  # break cycles (phis) while recursing
    ins = insmap[val]
    raw = ins["raw"]
    rhs = raw.split("=", 1)[1] if "=" in raw else raw
    rhs = _DBG_RE.sub("", rhs).strip()

    def repl(m):
        v = m.group(0)
        return v if v == val else "(" + value_sig(v, insmap, memo, depth + 1) + ")"

    sig = VALRE.sub(repl, rhs)
    memo[val] = sig
    return sig


def alloc_size_sigs(f: Func, insmap: dict, memo: dict) -> set[str]:
    """Signatures of values used as the size of a malloc/calloc/realloc (and the
    operands feeding them, so `malloc(len+1)` also covers a `memcpy(len)`)."""
    sigs = set()
    for ins in f.insns:
        if "call" not in ins["opcode"]:
            continue
        if not any(a in ins["raw"] for a in ("@malloc", "@calloc", "@realloc")):
            continue
        for v in ins["ops"]:
            sigs.add(value_sig(v, insmap, memo))
            sub = insmap.get(v)
            if sub:  # `len+1` -> also record `len`
                for o in sub["ops"]:
                    sigs.add(value_sig(o, insmap, memo))
    return sigs


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


def dominators(f: Func) -> dict:
    labels = list(f.blocks.keys())
    if not labels:
        return {}
    succ = {l: f.blocks[l]["succs"] for l in labels}
    preds = {l: [] for l in labels}
    for l in labels:
        for s in succ[l]:
            if s in preds:
                preds[s].append(l)
    allset = set(labels)
    dom = {l: set(allset) for l in labels}
    dom[f.entry] = {f.entry}
    changed = True
    while changed:
        changed = False
        for l in labels:
            if l == f.entry:
                continue
            new = set(allset)
            for p in preds[l]:
                new &= dom[p]
            new = {l} | new
            if new != dom[l]:
                dom[l] = new
                changed = True
    return dom


def backward_slice(seed: set[str], insmap: dict, maxdepth: int = 14) -> set[str]:
    out, work = set(), [(s, 0) for s in seed]
    while work:
        v, d = work.pop()
        if v in out or d > maxdepth:
            continue
        out.add(v)
        ins = insmap.get(v)
        if ins:
            for o in ins["ops"]:
                work.append((o, d + 1))
    return out


def _cmp_against_zero(raw: str) -> bool:
    """icmp comparing against literal 0/null -> a sign/null check, NOT a bounds check."""
    m = re.search(r"icmp \w+ [^,]+, (.+?)(?:,? !dbg|$)", raw)
    if not m:
        return False
    rhs = m.group(1).strip()
    return rhs in ("0", "null") or re.match(r"0$", rhs) is not None


def sink_is_guarded(f: Func, sink_ins: dict, rel_vars: set[str],
                    insmap: dict, dom: dict, sig_memo: dict) -> bool:
    """PATH-SENSITIVE (Pinpoint-style): is the sink dominated by a branch whose
    condition is a BOUNDS check on a value related to the sink? A dominating
    `if (p+n > end) return;` (taken to reach the sink) sanitizes the access.
    Relatedness is checked both by SSA identity AND field-sensitively by value
    signature, so a guard on `x->len` protects a sink using another load of x->len."""
    sb = sink_ins.get("block")
    if sb is None or not rel_vars:
        return False
    rel_sigs = {value_sig(v, insmap, sig_memo) for v in rel_vars}
    rel_sigs = {s for s in rel_sigs if s.startswith(("L[", "G("))}  # field/mem sigs only
    domset = dom.get(sb, set())
    for D, b in f.blocks.items():
        if b["cond"] is None or D == sb or D not in domset:
            continue
        t, fl = b["true"], b["false"]
        if not ((t and t in domset) or (fl and fl in domset)):
            continue  # branch does not decide reaching the sink
        cond = insmap.get(b["cond"])
        if not cond or "icmp" not in cond["opcode"]:
            continue
        if _cmp_against_zero(cond["raw"]):
            continue  # sign/null check, not a bounds guard
        guard_slice = backward_slice(set(cond["ops"]), insmap)
        # SSA-direct: the sink's exact pointer/size flows into the guard.
        if rel_vars & guard_slice:
            return True
        # field-sensitive: the guard checks the SAME struct field the sink uses.
        if rel_sigs:
            gsigs = {value_sig(v, insmap, sig_memo) for v in cond["ops"]}
            if rel_sigs & gsigs:
                return True
    return False


def find_candidates(f: Func, tainted: set[str], bounded: set[str],
                    dbg: dict) -> list[dict]:
    dom = dominators(f)
    insmap = _insmap(f)
    sig_memo: dict = {}
    alloc_sigs = alloc_size_sigs(f, insmap, sig_memo)
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
        # malloc-to-fit (field-sensitive): the destination was allocated with the same
        # size expression (matched by value signature, through struct-field loads).
        if size_v and any(value_sig(v, insmap, sig_memo) in alloc_sigs for v in size_v):
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
        # PATH-SENSITIVE guard: a dominating bounds check on the sink's operands
        # (e.g. `if (p+n > end) return;`) sanitizes the access on the reaching path.
        rel_vars = set(size_v) | set(dst_v) | set(src_v)
        if sink_is_guarded(f, ins, rel_vars, insmap, dom, sig_memo):
            continue
        # ON-DEMAND SMT: if the dominating path condition provably bounds a VARIABLE
        # size to a small value (e.g. a compound `x>0 && x<=4 && ...`), the whole copy
        # is bounded -> not an attacker overflow. (Constant-size sinks have size_v==[]
        # so this never touches pointer-offset bugs like rar:1304.)
        if size_tainted and smt_path.size_provably_bounded(
                f, insmap, dom, ins, size_v, value_sig, sig_memo, backward_slice):
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

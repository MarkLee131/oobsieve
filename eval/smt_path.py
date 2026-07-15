#!/usr/bin/env python3
"""On-demand SMT path-condition solving (Pinpoint-style) for our LLVM-IR taint.

For a size-tainted sink candidate, encode the size expression AND the dominating
branch guards (the path condition to reach the sink) as Z3 bit-vector constraints,
then ask: can the size still exceed a large threshold under that path condition?
  UNSAT  -> the guards provably bound the size (e.g. a compound `odd_bcj_size <= 4
            && ...`) -> SAFE, filter the candidate.
  SAT/unknown -> the size may be attacker-large -> keep.

Only ever FILTERS on a proof (UNSAT); defaults to keeping. This precisely handles
compound `&&` guards that the syntactic dominating-guard heuristic misses.
"""
from __future__ import annotations
import re

try:
    import z3
    HAVE_Z3 = True
except Exception:  # pragma: no cover
    HAVE_Z3 = False

W = 64
THRESHOLD = 1 << 20  # 1 MiB: a size the guards cannot bound below this is "unbounded"

_PRED = {
    "eq": lambda a, b: a == b, "ne": lambda a, b: a != b,
    "ugt": z3.UGT if HAVE_Z3 else None, "uge": z3.UGE if HAVE_Z3 else None,
    "ult": z3.ULT if HAVE_Z3 else None, "ule": z3.ULE if HAVE_Z3 else None,
    "sgt": lambda a, b: a > b, "sge": lambda a, b: a >= b,
    "slt": lambda a, b: a < b, "sle": lambda a, b: a <= b,
} if HAVE_Z3 else {}


class Encoder:
    def __init__(self, insmap, sigfn, sigmemo, maxdepth=40):
        self.insmap = insmap
        self.sigfn = sigfn          # value_sig(tok, insmap, memo) -> str
        self.sigmemo = sigmemo
        self.maxdepth = maxdepth
        self.solver = z3.Solver()
        self.memo = {}              # keyed by value SIGNATURE (field-sensitive memory)
        self.n = 0

    def _fresh(self):
        self.n += 1
        return z3.BitVec(f"_f{self.n}", W)

    def val(self, tok, depth=0):
        tok = tok.strip()
        if re.fullmatch(r"-?\d+", tok):
            return z3.BitVecVal(int(tok), W)
        if not tok.startswith("%"):
            return self._fresh()  # global / constant-expr / undef
        # FIELD-SENSITIVE MEMORY: two SSA values with the same signature (e.g. two
        # loads of the same struct field) share one Z3 variable, so a guard on
        # x->f constrains a size read of x->f.
        key = self.sigfn(tok, self.insmap, self.sigmemo)
        if key in self.memo:
            return self.memo[key]
        var = z3.BitVec("v" + str(self.n), W)
        self.n += 1
        self.memo[key] = var  # break cycles + share by signature
        ins = self.insmap.get(tok)
        if ins is None or depth > self.maxdepth:
            return var  # argument / unknown input -> unconstrained
        op = ins["opcode"]
        rhs = ins["raw"].split("=", 1)[1].strip() if "=" in ins["raw"] else ""
        if op in ("add", "sub", "mul", "and", "or", "xor", "shl", "lshr", "ashr", "udiv", "sdiv"):
            o = self._binop(rhs)
            if len(o) == 2:
                a, b = self.val(o[0], depth + 1), self.val(o[1], depth + 1)
                expr = {"add": a + b, "sub": a - b, "mul": a * b, "and": a & b,
                        "or": a | b, "xor": a ^ b, "shl": a << b,
                        "lshr": z3.LShR(a, b), "ashr": a >> b,
                        "udiv": z3.UDiv(a, b), "sdiv": a / b}[op]
                self.solver.add(var == expr)
        elif op in ("sext", "zext", "trunc", "bitcast", "ptrtoint", "inttoptr"):
            m = re.search(r"(%[\w.]+)", rhs)
            if m:
                self.solver.add(var == self.val(m.group(1), depth + 1))
        elif op == "phi":
            incs = re.findall(r"\[ ([^,]+),", rhs)
            cons = [var == self.val(x, depth + 1) for x in incs]
            if cons:
                self.solver.add(z3.Or(*cons))
        elif op == "select":
            # select i1 %c, TY %a, TY %b
            m = re.match(r"select i1 (%[\w.]+), \S+ ([^,]+), \S+ (.+)", rhs)
            if m:
                c = self.guard(m.group(1), depth + 1)
                a = self.val(m.group(2), depth + 1)
                b = self.val(m.group(3), depth + 1)
                if c is not None:
                    self.solver.add(var == z3.If(c, a, b))
        # load / call / getelementptr / etc. -> unconstrained fresh contents
        return var

    def guard(self, cond_tok, depth=0):
        ins = self.insmap.get(cond_tok)
        if ins is None or "icmp" not in ins["opcode"]:
            return None
        rhs = ins["raw"].split("=", 1)[1].strip()
        m = re.match(r"icmp (\w+) \S+ (.+?), (.+?)(?:,? !dbg.*)?$", rhs)
        if not m:
            return None
        pred, o1, o2 = m.group(1), m.group(2), m.group(3)
        fn = _PRED.get(pred)
        if fn is None:
            return None
        return fn(self.val(o1, depth + 1), self.val(o2, depth + 1))

    def _binop(self, rhs):
        parts = rhs.split(",")
        if len(parts) < 2:
            return []
        op1 = parts[0].split()[-1]
        op2 = parts[1].strip().split()[0]
        return [op1, op2]


def size_provably_bounded(f, insmap, dom, sink_ins, size_vals,
                          sigfn, sigmemo, slicefn) -> bool:
    """Return True if the RELEVANT path condition proves the size <= THRESHOLD.
    Only guards that actually constrain the size are conjoined (avoids spurious
    UNSAT from mutually-exclusive loop-iteration guards); relatedness is
    field-sensitive by value signature."""
    if not HAVE_Z3 or not size_vals:
        return False
    sb = sink_ins.get("block")
    domset = dom.get(sb, set()) if sb else set()
    size_slice = slicefn(set(size_vals), insmap)
    size_sigs = {sigfn(v, insmap, sigmemo) for v in size_slice}
    size_sigs = {s for s in size_sigs if s.startswith(("L[", "G(")) or "(" in s}

    guards = []
    for D, b in f.blocks.items():
        if b["cond"] is None or D == sb or D not in domset:
            continue
        t, fl = b["true"], b["false"]
        if t and t in domset:
            pol = True
        elif fl and fl in domset:
            pol = False
        else:
            continue
        cond = insmap.get(b["cond"])
        if not cond or "icmp" not in cond["opcode"]:
            continue
        gslice = slicefn(set(cond["ops"]), insmap)
        gsigs = {sigfn(v, insmap, sigmemo) for v in gslice}
        # RELEVANT only: the guard must constrain a value the size depends on.
        if (gslice & size_slice) or (gsigs & size_sigs):
            guards.append((b["cond"], pol))
    if not guards:
        return False
    try:
        enc = Encoder(insmap, sigfn, sigmemo)
        size_expr = enc.val(size_vals[0])
        for cond, pol in guards:
            g = enc.guard(cond)
            if g is not None:
                enc.solver.add(g if pol else z3.Not(g))
        enc.solver.add(z3.UGT(size_expr, z3.BitVecVal(THRESHOLD, W)))
        enc.solver.set("timeout", 3000)
        return enc.solver.check() == z3.unsat
    except Exception:
        return False

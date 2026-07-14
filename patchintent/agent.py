from __future__ import annotations
import json, re
from dataclasses import dataclass
from enum import Enum
from patchintent.context import PatchContext
from patchintent.llm.base import LLMClient

class Verdict(str, Enum):
    KEEP = "keep"
    DROP = "drop"
    SUBJECT_CORRECT = "subject-correct"

@dataclass
class SpecJudgement:
    spec_id: int
    verdict: Verdict
    corrected_subject: str | None
    intent_confidence: float
    rationale: str

_SYSTEM = (
    "You audit candidate value-flow specifications inferred from a security patch. "
    "You are given the patch's candidate specs plus evidence (diff, optionally the "
    "commit message, and source snippets). For EACH candidate spec you MUST return "
    "exactly one verdict: 'keep' (spec is correct), 'drop' (spec is spurious), or "
    "'subject-correct' (spec is about the wrong interface/argument; provide the "
    "corrected subject string). You MUST NOT invent new specs or new spec_ids. "
    "Every rationale MUST cite concrete evidence from the provided material. "
    'Respond ONLY with JSON: {"judgements":[{"spec_id":int,"verdict":str,'
    '"corrected_subject":str|null,"intent_confidence":float,"rationale":str}]}'
)

def _render_specs(ctx: PatchContext) -> str:
    lines = []
    for s in ctx.specs:
        lines.append(
            f"[spec_id={s.spec_id}] type={s.spec_type} | subject/input={s.spec_input} "
            f"| output={s.spec_output} | indirect_call={s.indirect_call}"
        )
    return "\n".join(lines)

class IntentAgent:
    def __init__(self, client: LLMClient, use_commit_message: bool = True):
        self.client = client
        self.use_commit_message = use_commit_message

    def build_prompt(self, ctx: PatchContext) -> tuple[str, str]:
        parts = [f"Patch: {ctx.patch_id}", "", "Candidate specs:", _render_specs(ctx)]
        parts += ["", "Diff (changed lines):", ctx.diff_text]
        if self.use_commit_message:
            parts += ["", "Commit message:", ctx.commit_message]
        if ctx.func_snippets:
            parts += ["", "Source snippets:"]
            for fn, snip in ctx.func_snippets.items():
                parts += [f"--- {fn} ---", snip]
        return _SYSTEM, "\n".join(parts)

    def judge(self, ctx: PatchContext) -> list[SpecJudgement]:
        system, user = self.build_prompt(ctx)
        raw = self.client.complete(system, user)
        data = _parse_json(raw)
        valid_ids = {s.spec_id for s in ctx.specs}
        out: list[SpecJudgement] = []
        for j in data.get("judgements", []):
            sid = j.get("spec_id")
            if sid not in valid_ids:
                continue  # never accept invented spec ids
            try:
                verdict = Verdict(j["verdict"])
            except (KeyError, ValueError):
                continue
            out.append(SpecJudgement(
                spec_id=sid, verdict=verdict,
                corrected_subject=j.get("corrected_subject"),
                intent_confidence=float(j.get("intent_confidence", 0.0)),
                rationale=str(j.get("rationale", "")),
            ))
        return out

def _parse_json(raw: str) -> dict:
    try:
        return json.loads(raw)
    except json.JSONDecodeError:
        m = re.search(r"\{.*\}", raw, re.DOTALL)
        return json.loads(m.group(0)) if m else {"judgements": []}

from __future__ import annotations
import json
from dataclasses import replace
from patchintent.spec_model import Spec
from patchintent.agent import SpecJudgement, Verdict

def apply_judgements(specs: list[Spec], judgements: list[SpecJudgement]) -> list[Spec]:
    by_id = {j.spec_id: j for j in judgements}
    out: list[Spec] = []
    for s in specs:
        j = by_id.get(s.spec_id)
        if j is None or j.verdict == Verdict.KEEP:
            out.append(s)                      # conservative default: keep
        elif j.verdict == Verdict.DROP:
            continue
        elif j.verdict == Verdict.SUBJECT_CORRECT:
            new_input = j.corrected_subject or s.spec_input
            out.append(replace(s, spec_input=new_input))
    return out

def write_audit(path: str, judgements: list[SpecJudgement]) -> None:
    with open(path, "w") as f:
        for j in judgements:
            f.write(json.dumps({
                "spec_id": j.spec_id,
                "verdict": j.verdict.value,
                "corrected_subject": j.corrected_subject,
                "intent_confidence": j.intent_confidence,
                "rationale": j.rationale,
            }) + "\n")

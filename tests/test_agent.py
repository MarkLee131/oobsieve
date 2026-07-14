import json
from patchintent.agent import IntentAgent, Verdict
from patchintent.context import PatchContext
from patchintent.spec_model import Spec
from patchintent.llm.mock_client import MockLLMClient

def _ctx():
    specs = [
        Spec("Src Must Reach Sink", "after.patch.foo", "S0in", "S0out", "/0.smt", "", 0),
        Spec("Src Must Reach Sink", "after.patch.bar", "S1in", "S1out", "/1.smt", "", 1),
    ]
    return PatchContext("p1", "fix: cleanup must pair with foo not bar", "+a.c:1", specs)

def test_judge_parses_verdicts():
    resp = json.dumps({"judgements": [
        {"spec_id": 0, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 0.9, "rationale": "commit names foo"},
        {"spec_id": 1, "verdict": "drop", "corrected_subject": None,
         "intent_confidence": 0.8, "rationale": "bar is not the subject"},
    ]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert [j.verdict for j in js] == [Verdict.KEEP, Verdict.DROP]
    assert js[1].spec_id == 1

def test_judge_rejects_invented_spec_ids():
    # LLM returns a spec_id not in the candidates -> must be ignored, not crash
    resp = json.dumps({"judgements": [
        {"spec_id": 99, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 1.0, "rationale": "hallucinated"},
    ]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert js == []   # invented ids dropped

def test_prompt_omits_commit_when_disabled():
    agent = IntentAgent(MockLLMClient(["{}"]), use_commit_message=False)
    _system, user = agent.build_prompt(_ctx())
    assert "cleanup must pair" not in user

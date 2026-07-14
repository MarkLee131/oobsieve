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

def test_judge_skips_stray_json_object_before_real_blob():
    # A stray, unrelated `{...}` appears in prose before the real JSON blob.
    # The parser must not let it corrupt/short-circuit extraction of the real one.
    real = json.dumps({"judgements": [
        {"spec_id": 0, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 0.9, "rationale": "commit names foo"},
    ]})
    resp = "Here is a note {not json} and then the answer:\n" + real
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert [j.verdict for j in js] == [Verdict.KEEP]
    assert js[0].spec_id == 0

def test_judge_handles_null_judgements():
    resp = json.dumps({"judgements": None})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert js == []

def test_judge_handles_non_dict_judgement_entries():
    resp = json.dumps({"judgements": ["oops"]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert js == []

def test_judge_handles_top_level_json_list():
    resp = json.dumps([1, 2, 3])
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert js == []

def test_judge_skips_non_numeric_confidence():
    resp = json.dumps({"judgements": [
        {"spec_id": 0, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": "high", "rationale": "bad confidence"},
    ]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert js == []

def test_judge_coerces_numeric_string_spec_id():
    resp = json.dumps({"judgements": [
        {"spec_id": "0", "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 0.9, "rationale": "spec_id sent as string"},
    ]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert [j.verdict for j in js] == [Verdict.KEEP]
    assert js[0].spec_id == 0

def test_judge_rejects_boolean_spec_id():
    # JSON `true`/`false` must not alias valid ids 1/0 via Python's bool==int quirk.
    resp = json.dumps({"judgements": [
        {"spec_id": True, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 0.9, "rationale": "boolean spec_id"},
    ]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert js == []

def test_judge_normalizes_float_spec_id_to_int():
    resp = json.dumps({"judgements": [
        {"spec_id": 0.0, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 0.9, "rationale": "spec_id sent as float"},
    ]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert [j.verdict for j in js] == [Verdict.KEEP]
    assert js[0].spec_id == 0
    assert type(js[0].spec_id) is int


def test_judge_clamps_confidence_to_unit_interval():
    resp = json.dumps({"judgements": [
        {"spec_id": 0, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 5.0, "rationale": "r"},
    ]})
    agent = IntentAgent(MockLLMClient([resp]))
    js = agent.judge(_ctx())
    assert js[0].intent_confidence == 1.0


def test_judge_retries_on_empty_then_succeeds():
    empty = json.dumps({"judgements": []})
    good = json.dumps({"judgements": [
        {"spec_id": 0, "verdict": "keep", "corrected_subject": None,
         "intent_confidence": 0.9, "rationale": "r"},
    ]})
    agent = IntentAgent(MockLLMClient([empty, good]), retries=1)
    js = agent.judge(_ctx())
    assert len(js) == 1 and js[0].verdict.value == "keep"


def test_judge_no_retry_by_default_single_shot():
    # default retries=0 consumes exactly one response, returns empty on empty
    agent = IntentAgent(MockLLMClient([json.dumps({"judgements": []})]))
    assert agent.judge(_ctx()) == []

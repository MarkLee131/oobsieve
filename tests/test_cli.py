import json
from patchintent.cli import refine_patch
from patchintent.llm.mock_client import MockLLMClient

def test_refine_patch_end_to_end():
    resp = json.dumps({"judgements": [
        {"spec_id": 0, "verdict": "drop", "corrected_subject": None,
         "intent_confidence": 0.8, "rationale": "spurious per commit"},
    ]})
    specs, judgements = refine_patch("tests/fixtures/patch_dir", MockLLMClient([resp]))
    assert specs == []                       # the one candidate was dropped
    assert judgements[0].verdict.value == "drop"

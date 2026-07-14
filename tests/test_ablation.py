import json
from eval.ablation import run_ablation
from patchintent.llm.mock_client import MockLLMClient

def test_ablation_runs_two_conditions():
    keep = json.dumps({"judgements":[{"spec_id":0,"verdict":"keep",
        "corrected_subject":None,"intent_confidence":1.0,"rationale":"r"}]})
    # one response per (condition x patch); 2 conditions, 1 patch => 2 responses
    factory = lambda model: MockLLMClient([keep, keep])
    res = run_ablation(["tests/fixtures/patch_dir"], factory,
                       conditions=("full", "no_commit"))
    assert set(res.keys()) == {"full", "no_commit"}
    assert len(res["full"]) == 1

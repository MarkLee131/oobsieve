import json
from patchintent.spec_model import Spec
from patchintent.agent import SpecJudgement, Verdict
from patchintent.rewriter import apply_judgements, write_audit

def _specs():
    return [
        Spec("T", "ic0", "input0", "out0", "/0.smt", "", 0),
        Spec("T", "ic1", "input1", "out1", "/1.smt", "", 1),
        Spec("T", "ic2", "input2", "out2", "/2.smt", "", 2),
    ]

def test_apply_drops_corrects_and_keeps():
    js = [
        SpecJudgement(0, Verdict.KEEP, None, 0.9, "r"),
        SpecJudgement(1, Verdict.DROP, None, 0.8, "r"),
        SpecJudgement(2, Verdict.SUBJECT_CORRECT, "fixed_input", 0.7, "r"),
    ]
    out = apply_judgements(_specs(), js)
    assert [s.spec_id for s in out] == [0, 2]
    assert out[1].spec_input == "fixed_input"

def test_missing_judgement_defaults_to_keep():
    out = apply_judgements(_specs(), [])   # no judgement -> conservative keep
    assert [s.spec_id for s in out] == [0, 1, 2]

def test_write_audit_jsonl(tmp_path):
    p = tmp_path / "audit.jsonl"
    write_audit(str(p), [SpecJudgement(0, Verdict.DROP, None, 0.8, "spurious")])
    row = json.loads(p.read_text().splitlines()[0])
    assert row["spec_id"] == 0 and row["verdict"] == "drop"

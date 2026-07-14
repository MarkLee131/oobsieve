import json
from eval.run_detect import diff_bugs

def test_diff_bugs(tmp_path):
    base = tmp_path / "b.json"; neu = tmp_path / "n.json"
    base.write_text(json.dumps([{"file":"a.c","line":10,"spec_type":"T"},
                                {"file":"a.c","line":20,"spec_type":"T"}]))
    neu.write_text(json.dumps([{"file":"a.c","line":10,"spec_type":"T"}]))
    d = diff_bugs(str(base), str(neu))
    assert d["n_baseline"] == 2 and d["n_neuro"] == 1
    assert ("a.c", 20, "T") in d["only_baseline"]

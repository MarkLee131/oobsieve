from eval.metrics import spec_precision, subject_accuracy, bug_precision


def test_spec_precision():
    assert spec_precision({0: True, 1: False, 2: True, 3: True}) == 0.75


def test_subject_accuracy():
    gold = {0: "foo", 1: "bar"}
    pred = {0: "foo", 1: "baz"}
    assert subject_accuracy(gold, pred) == 0.5


def test_bug_precision():
    assert bug_precision([True, True, False, True]) == 0.75


def test_bug_precision_empty_is_zero():
    assert bug_precision([]) == 0.0

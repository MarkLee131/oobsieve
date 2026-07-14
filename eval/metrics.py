from __future__ import annotations


def spec_precision(labels: dict[int, bool]) -> float:
    if not labels:
        return 0.0
    return sum(1 for v in labels.values() if v) / len(labels)


def subject_accuracy(gold: dict[int, str], predicted: dict[int, str]) -> float:
    if not gold:
        return 0.0
    correct = sum(1 for k, v in gold.items() if predicted.get(k) == v)
    return correct / len(gold)


def bug_precision(labels: list[bool]) -> float:
    if not labels:
        return 0.0
    return sum(1 for v in labels if v) / len(labels)

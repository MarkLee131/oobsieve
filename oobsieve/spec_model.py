from __future__ import annotations
import csv
from dataclasses import dataclass

SPEC_CSV_FIELDS = [
    "Spec Type", "Indirect Call", "Spec Input",
    "Spec Output", "Spec Cond SMT", "Spec Orders",
]

@dataclass
class Spec:
    spec_type: str
    indirect_call: str
    spec_input: str
    spec_output: str
    spec_cond_smt: str
    spec_orders: str
    spec_id: int = -1

    @classmethod
    def from_row(cls, row: dict, spec_id: int) -> "Spec":
        return cls(
            spec_type=row["Spec Type"],
            indirect_call=row["Indirect Call"],
            spec_input=row["Spec Input"],
            spec_output=row["Spec Output"],
            spec_cond_smt=row["Spec Cond SMT"],
            spec_orders=row["Spec Orders"],
            spec_id=spec_id,
        )

    def to_row(self) -> dict:
        return {
            "Spec Type": self.spec_type,
            "Indirect Call": self.indirect_call,
            "Spec Input": self.spec_input,
            "Spec Output": self.spec_output,
            "Spec Cond SMT": self.spec_cond_smt,
            "Spec Orders": self.spec_orders,
        }

def load_specs(path: str) -> list[Spec]:
    with open(path, newline="") as f:
        return [Spec.from_row(r, i) for i, r in enumerate(csv.DictReader(f))]

def write_specs(path: str, specs: list[Spec]) -> None:
    with open(path, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=SPEC_CSV_FIELDS)
        w.writeheader()
        for s in specs:
            w.writerow(s.to_row())

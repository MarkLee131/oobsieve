from patchintent.spec_model import load_specs, write_specs, SPEC_CSV_FIELDS

def test_roundtrip_preserves_rows(tmp_path):
    src = "tests/fixtures/sample_specs.csv"
    specs = load_specs(src)
    assert len(specs) == 2
    assert specs[0].spec_id == 0
    assert specs[0].spec_type == "Src Must Not Reach Sink"
    out = tmp_path / "out.csv"
    write_specs(str(out), specs)
    text = out.read_text()
    assert text.splitlines()[0] == ",".join(SPEC_CSV_FIELDS)
    # round-trip is stable
    assert [s.to_row() for s in load_specs(str(out))] == [s.to_row() for s in specs]

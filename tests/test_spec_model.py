from oobsieve.spec_model import load_specs, write_specs, SPEC_CSV_FIELDS, Spec

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

def test_roundtrip_preserves_commas_in_fields(tmp_path):
    s = Spec(
        spec_type="Src Must Not Reach Sink",
        indirect_call="after.patch.foo",
        spec_input='Indirect call: after.patch.foo Arg Name: arg_1:0',
        spec_output="Used in sensitive API: memcpy Arg idx: 2",
        spec_cond_smt='NOT AND VALUE(cmp, a, b), VALUE(cmp2, c, d)',
        spec_orders="",
        spec_id=0,
    )
    out = tmp_path / "c.csv"
    write_specs(str(out), [s])
    loaded = load_specs(str(out))
    assert loaded[0].spec_cond_smt == s.spec_cond_smt

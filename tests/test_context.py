from patchintent.context import assemble, referenced_funcs
from patchintent.spec_model import Spec


def test_referenced_funcs_extracts_call_targets():
    s = Spec("Src Must Reach Sink", "after.patch.buffer_prepare",
             "Return of API: after.patch.dma_alloc_coherent#-1",
             "Return of indirect call: after.patch.buffer_prepare", "/x.smt", "", 0)
    funcs = referenced_funcs(s)
    assert "buffer_prepare" in funcs
    assert "dma_alloc_coherent" in funcs


def test_assemble_reads_patch_dir(tmp_path):
    ctx = assemble("tests/fixtures/patch_dir")
    assert ctx.patch_id == "patch_dir"
    assert "out-of-bounds" in ctx.commit_message.lower()
    assert ctx.diff_text.strip() != ""
    assert len(ctx.specs) == 1

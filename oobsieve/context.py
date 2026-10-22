from __future__ import annotations
import json, os, re
from dataclasses import dataclass, field
from oobsieve.spec_model import Spec, load_specs

_FUNC_RE = re.compile(r"(?:after|before)\.patch\.([A-Za-z_]\w*)")

def referenced_funcs(spec: Spec) -> set[str]:
    blob = " ".join([spec.indirect_call, spec.spec_input, spec.spec_output])
    return set(_FUNC_RE.findall(blob))

@dataclass
class PatchContext:
    patch_id: str
    commit_message: str
    diff_text: str
    specs: list[Spec]
    func_snippets: dict[str, str] = field(default_factory=dict)

def _read(path: str) -> str:
    return open(path).read() if os.path.exists(path) else ""

def _grab_snippet(source_root: str, func: str, max_lines: int) -> str:
    # best-effort: find the function definition line and take a window
    for root, _dirs, files in os.walk(source_root):
        for fn in files:
            if not fn.endswith((".c", ".h")):
                continue
            p = os.path.join(root, fn)
            try:
                lines = open(p, errors="ignore").read().splitlines()
            except OSError:
                continue
            for i, line in enumerate(lines):
                if re.search(rf"\b{re.escape(func)}\s*\(", line) and "{" in "".join(lines[i:i+3]):
                    return "\n".join(lines[i:i + max_lines])
    return ""

def assemble(patch_dir: str, source_root: str | None = None,
             max_snippet_lines: int = 60) -> PatchContext:
    meta_path = os.path.join(patch_dir, "commit_meta.json")
    message = json.load(open(meta_path))["message"] if os.path.exists(meta_path) else ""
    diff_text = _read(os.path.join(patch_dir, "diff.txt"))
    specs_path = os.path.join(patch_dir, "specs.csv")
    specs = load_specs(specs_path) if os.path.exists(specs_path) else []
    snippets: dict[str, str] = {}
    if source_root:
        wanted: set[str] = set()
        for s in specs:
            wanted |= referenced_funcs(s)
        for fn in wanted:
            snip = _grab_snippet(source_root, fn, max_snippet_lines)
            if snip:
                snippets[fn] = snip
    return PatchContext(
        patch_id=os.path.basename(os.path.normpath(patch_dir)),
        commit_message=message, diff_text=diff_text,
        specs=specs, func_snippets=snippets,
    )

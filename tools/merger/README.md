# llvm-link-patch — reproduced SEAL patch merger

SEAL's pipeline expects a custom `llvm-link-patch` at `/llvm/bin/llvm-link-patch`
(see SEAL `helper_scripts/config.py`). That binary is **absent from the public
Docker image** `harperchen1110/seal-latest:1.0`. This is a faithful reproduction,
reverse-engineered from the shipped pre-merged bitcode.

## What the merger does (ground truth from the shipped 39244cc example)
- Prefixes every **defined** function/global in before.bc with `before.patch.`
  and in after.bc with `after.patch.` (135 of each in the reference example).
- Leaves **external declarations/intrinsics unprefixed** (e.g. `memcpy`,
  `_dev_err`) so both versions share one declaration and SEAL sees the common
  API boundary.
- Links both prefixed modules into one `merge.bc`. Renaming via the LLVM API
  auto-updates all call sites.

## Build (inside the SEAL Docker; needs LLVM 3.6.2 dev libs already present)
```
apt-get install -y --no-install-recommends libtinfo-dev zlib1g-dev   # link stubs
g++ llvm-link-patch.cpp \
  $(/llvm/bin/llvm-config --cxxflags --ldflags) \
  $(/llvm/bin/llvm-config --libs irreader bitwriter linker core support) \
  $(/llvm/bin/llvm-config --system-libs) \
  -o /llvm/bin/llvm-link-patch
```

## Use (matches SEAL's invocation in 30_spec_gen.py)
```
/llvm/bin/llvm-link-patch -before-bc=before.bc -after-bc=after.bc -o merge.bc
```

## Validated
- Namespacing matches SEAL convention exactly (`after.patch.<fn>` / `before.patch.<fn>`).
- SEAL `-infer-patch-spec` parses the produced merge.bc and locates the patch's
  added/removed IR at the correct source lines.

## Known target-compatibility caveat (discovered 2026-07-14)
tcpdump 4.99+ implements bounds checks via non-local `nd_trunc_longjmp` (setjmp/
longjmp). When the patched line IS such a check, SEAL's value-flow node builder
crashes: `isa<SEGCallSiteOutputNode>: "isa<> used on a null pointer"`. Prefer
targets with return-code error handling (libarchive/libxml2) or pre-longjmp
tcpdump (4.9.x, `goto trunc`) for the benchmark.

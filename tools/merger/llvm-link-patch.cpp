// llvm-link-patch: reproduction of SEAL's patch merger for LLVM 3.6.
// Prefixes every DEFINED function/global in before.bc with "before.patch." and
// in after.bc with "after.patch.", leaves external declarations untouched, then
// links both into one module. Renaming via the API auto-updates all uses.
//
// Usage: llvm-link-patch -before-bc=before.bc -after-bc=after.bc -o merge.bc
#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/Linker/Linker.h"
#include <string>

using namespace llvm;

static cl::opt<std::string> BeforeBC("before-bc", cl::desc("before-patch bitcode"), cl::Required);
static cl::opt<std::string> AfterBC("after-bc", cl::desc("after-patch bitcode"), cl::Required);
static cl::opt<std::string> OutBC("o", cl::desc("output merged bitcode"), cl::Required);

static void prefixModule(Module &M, const std::string &prefix) {
  // Defined functions only (skip declarations / intrinsics).
  for (Module::iterator F = M.begin(), E = M.end(); F != E; ++F) {
    if (!F->isDeclaration())
      F->setName(prefix + F->getName().str());
  }
  // Defined global variables only (skip external decls).
  for (Module::global_iterator G = M.global_begin(), E = M.global_end(); G != E; ++G) {
    if (!G->isDeclaration())
      G->setName(prefix + G->getName().str());
  }
}

int main(int argc, char **argv) {
  cl::ParseCommandLineOptions(argc, argv, "SEAL patch merger\n");
  LLVMContext &Ctx = getGlobalContext();
  SMDiagnostic Err;

  std::unique_ptr<Module> Before = parseIRFile(BeforeBC, Err, Ctx);
  if (!Before) { Err.print("llvm-link-patch", errs()); return 1; }
  std::unique_ptr<Module> After = parseIRFile(AfterBC, Err, Ctx);
  if (!After) { Err.print("llvm-link-patch", errs()); return 1; }

  prefixModule(*Before, "before.patch.");
  prefixModule(*After, "after.patch.");

  Linker L(Before.get());
  if (L.linkInModule(After.get())) {
    errs() << "llvm-link-patch: link failed\n";
    return 1;
  }

  std::error_code EC;
  raw_fd_ostream OS(OutBC.c_str(), EC, sys::fs::F_None);
  if (EC) { errs() << "llvm-link-patch: cannot open output: " << EC.message() << "\n"; return 1; }
  WriteBitcodeToFile(Before.get(), OS);
  OS.flush();
  return 0;
}

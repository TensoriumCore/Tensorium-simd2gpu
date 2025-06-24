#include "mlir/InitAllPasses.h"
#include "mlir/Pass/PassRegistry.h"
#include "TensoriumSIMD2GPU/RegisterPasses.hpp"

using namespace mlir;

namespace {
  struct AVXToSIMTPass : public PassWrapper<AVXToSIMTPass, OperationPass<ModuleOp>> {
    void runOnOperation() override {
      // Placeholder: pattern match AVX IR and lift to MLIR here
    }
  };
}

extern "C" ::mlir::PassPluginLibraryInfo mlirGetPassPluginInfo() {
  return {
    MLIR_PLUGIN_API_VERSION,
    "TensoriumSIMD2GPU",
    "0.1",
    [](mlir::PassRegistry &registry) {
      registry.addPass([]() -> std::unique_ptr<mlir::Pass> {
        return std::make_unique<AVXToSIMTPass>();
      });
    }
  };
}

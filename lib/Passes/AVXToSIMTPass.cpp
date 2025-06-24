// Placeholder for future implementation
#include "TensoriumSIMD2GPU/RegisterPasses.hpp"

using namespace mlir;

void mlir::registerAVXToSIMTPass() {
  PassRegistration<>(
    "convert-avx-to-mlir",
    "Convert AVX intrinsics to MLIR vector ops"
  );
}

#ifndef TENSORIUM_SIMD2GPU_REGISTER_PASSES_HPP
#define TENSORIUM_SIMD2GPU_REGISTER_PASSES_HPP

#include "mlir/Pass/Pass.h"

namespace mlir {
  void registerAVXToSIMTPass();
}

#endif

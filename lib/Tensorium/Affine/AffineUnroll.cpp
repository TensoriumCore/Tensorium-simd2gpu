#include "AffineUnroll.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/LoopUtils.h"

using namespace mlir;
namespace tensorium {

void AffineUnrollPass::runOnOperation() {
  getOperation().walk([&](affine::AffineForOp op) {
    if (failed(affine::loopUnrollFull(op))) {
      op.emitError("Failed to fully unroll affine.for loop");
      signalPassFailure();
    }
  });
}

std::unique_ptr<mlir::Pass> createAffineUnrollPass() {
  return std::make_unique<AffineUnrollPass>();
}
} // namespace tensorium

#pragma once
#include "mlir/Pass/Pass.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"

namespace tensorium {

struct AffineUnrollPass 
  : public mlir::PassWrapper<AffineUnrollPass, mlir::OperationPass<mlir::func::FuncOp>> {
  void runOnOperation() override;
  mlir::StringRef getArgument() const final { return "affine-unroll"; }
  mlir::StringRef getDescription() const final { return "Unroll all affine.for loops in FuncOps"; }
};

std::unique_ptr<mlir::Pass> createAffineUnrollPass();

} // namespace tensorium

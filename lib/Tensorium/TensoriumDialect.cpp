
#include "Tensorium/TensoriumDialect.h"
#include "Tensorium/TensoriumOps.h"

using namespace mlir;
using namespace mlir::tensorium;

void TensoriumDialect::initialize() {
  addOperations<
#define GET_OP_LIST
#include "Tensorium/TensoriumOps.cpp.inc"
      >();
}

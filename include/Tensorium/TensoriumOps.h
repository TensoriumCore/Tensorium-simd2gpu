
#ifndef TENSORIUM_TENSORIUMOPS_H
#define TENSORIUM_TENSORIUMOPS_H

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Interfaces/InferTypeOpInterface.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"

#define GET_OP_CLASSES
#include "Tensorium/TensoriumOps.h.inc"

#endif // TENSORIUM_TENSORIUMOPS_H

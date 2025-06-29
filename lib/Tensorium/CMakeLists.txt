# lib/Tensorium/CMakeLists.txt

add_mlir_dialect_library(MLIRTensorium
  TensoriumDialect.cpp
  TensoriumOps.cpp
  DEPENDS
    MLIRTensoriumOpsIncGen
  LINK_LIBS PUBLIC
    MLIRIR
)

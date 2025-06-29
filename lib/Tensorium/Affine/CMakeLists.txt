
add_mlir_library(MLIRTensoriumAffineUnroll
  AffineUnroll.cpp

  EXCLUDE_FROM_LIBMLIR

  LINK_LIBS PUBLIC
    MLIRIR
    MLIRFuncDialect
    MLIRAffineDialect
    MLIRPass
    MLIRTransforms
)


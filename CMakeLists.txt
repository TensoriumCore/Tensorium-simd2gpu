cmake_minimum_required(VERSION 3.16)
project(TensoriumSIMD2GPU)

find_package(MLIR REQUIRED CONFIG)

set(CMAKE_CXX_STANDARD 17)
set(LLVM_ENABLE_RTTI ON)

include_directories(include)

add_library(TensoriumSIMD2GPU MODULE
  lib/Passes/RegisterPasses.cpp
  lib/Passes/AVXToSIMTPass.cpp
)

target_link_libraries(TensoriumSIMD2GPU
  PRIVATE
  MLIRIR
  MLIRPass
  MLIRTransforms
  MLIRSupport
)

set_target_properties(TensoriumSIMD2GPU PROPERTIES
  PREFIX ""
  OUTPUT_NAME "libTensoriumSIMD2GPU"
)

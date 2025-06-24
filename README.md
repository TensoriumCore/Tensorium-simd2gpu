# Tensorium SIMD2GPU

**Tensorium SIMD2GPU** is a compiler module designed to lift SIMD intrinsics (such as AVX) into architecture-independent MLIR representations. It enables automatic transformation of vectorized CPU code into GPU-executable kernels through MLIR lowering pipelines.

This component is part of the [Tensorium Foundation](https://github.com/TensoriumCore), whose goal is to simplify and accelerate tensor-based computations in numerical physics, with a focus on general relativity.

## Features

- Translation of AVX (and potentially SSE/NEON) intrinsics into MLIR `vector` and `memref` operations
- Intermediate representation suitable for targeting GPU backends (CUDA, Metal)
- Integration with Clang plugins via `#pragma tensorium target(gpu)`
- Support for JIT compilation and execution using MLIR's `ExecutionEngine`

## Status

This module is currently under active development. The initial focus is on:
- Identifying and translating SSE/AVX2/AVX512 intrinsics from LLVM IR
- Emitting MLIR dialects (`vector`, `gpu`, `memref`)
- Building a lightweight infrastructure for runtime GPU execution

## License

MIT License

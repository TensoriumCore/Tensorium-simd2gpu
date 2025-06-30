#!/bin/bash
set -e

SRC=CompilerHandler/PragmaTest.cpp
SDK=$(xcrun --show-sdk-path)

LLVM=/opt/local/libexec/llvm-20/bin
MLIR_TRANSLATE=/opt/local/libexec/llvm-20/bin/mlir-translate
MLIR_OPT=/opt/local/libexec/llvm-20/bin/mlir-opt  # optionnel pour les passes MLIR

# 1. Compilation avec le plugin
$LLVM/clang++ -msse2 --target=spirv64\
  -isystem "$SDK/usr/include" \
  -Xclang -load -Xclang ../build/lib/libTensoriumPragmaPlugin.dylib \
  -Xclang -add-plugin -Xclang tensorium-dispatch \
  "$SRC" -c -o /dev/null

for CPP in tensorium_export/*_tensorium_gpu.cpp; do
  LL=${CPP%.cpp}.ll

  # 2. Compilation en LLVM IR
  $LLVM/clang++ -msse2 \
    -isystem "$SDK/usr/include" \
    -emit-llvm -S "$CPP" -o "$LL"

  # 3. Pass LLVM custom (annotations)
  $LLVM/opt \
    -load-pass-plugin ../build/lib/libDumpTensoriumGpuFuncsPass.dylib \
    -passes="dump-tensorium-gpu-funcs" \
    "$LL" -disable-output

  # 4. Vérification des annotations
  if grep -q '__attribute__((annotate("tensorium_gpu")))' "$CPP"; then
    echo "[CHECK][OK] Annotation found in $CPP"
  else
    echo "[CHECK][FAIL] Annotation MISSING in $CPP"
  fi

  if grep -q 'tensorium_gpu' "$LL"; then
    echo "[CHECK][OK] Annotation found in $LL"
  else
    echo "[CHECK][FAIL] Annotation MISSING in $LL"
  fi

  # 5. Conversion LLVM IR → MLIR (LLVM dialect)
  MLIR=${LL%.ll}.mlir
  $MLIR_TRANSLATE --import-llvm "$LL" -o "$MLIR"
  if [ -f "$MLIR" ]; then
    echo "[CONVERT][OK] $LL → $MLIR"
  else
    echo "[CONVERT][FAIL] $LL → $MLIR"
    exit 1
  fi

  # (optionnel) 6. Appliquer des passes MLIR (exemple, à adapter à ton pipeline)
  # $MLIR_OPT "$MLIR" --some-pass ... -o "${MLIR%.mlir}.lowered.mlir"

done

module attributes {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "o", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 21.0.0git (https://github.com/llvm/llvm-project.git 3c02150f02022292645f6238524f0401a6f5014f)", llvm.target_triple = "x86_64-apple-macosx15.0.0"} {
  llvm.mlir.global private unnamed_addr constant @".str"("tensorium_gpu\00") {addr_space = 0 : i32, dso_local, section = "llvm.metadata"}
  llvm.mlir.global private unnamed_addr constant @".str.1"("tensorium_export/test_simd_intrinsic_tensorium_gpu.cpp\00") {addr_space = 0 : i32, dso_local, section = "llvm.metadata"}
  llvm.mlir.global appending @llvm.global.annotations() {addr_space = 0 : i32, section = "llvm.metadata"} : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>> {
    %0 = llvm.mlir.undef : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>>
    %1 = llvm.mlir.zero : !llvm.ptr
    %2 = llvm.mlir.constant(3 : i32) : i32
    %3 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %4 = llvm.mlir.addressof @".str" : !llvm.ptr
    %5 = llvm.mlir.addressof @_Z19test_simd_intrinsicv : !llvm.ptr
    %6 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, ptr, i32, ptr)>
    %7 = llvm.insertvalue %5, %6[0] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %8 = llvm.insertvalue %4, %7[1] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %9 = llvm.insertvalue %3, %8[2] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %10 = llvm.insertvalue %2, %9[3] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %11 = llvm.insertvalue %1, %10[4] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %12 = llvm.insertvalue %11, %0[0] : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>> 
    llvm.return %12 : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>>
  }
  llvm.module_flags [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<min, "PIC Level", 2 : i32>, #llvm.mlir.module_flag<max, "uwtable", 2 : i32>, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>]
  llvm.func @_Z19test_simd_intrinsicv() attributes {frame_pointer = #llvm.framePointerKind<all>, no_inline, optimize_none, passthrough = ["mustprogress", "ssp", ["min-legal-vector-width", "128"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "penryn"]], target_cpu = "penryn", target_features = #llvm.target_features<["+cmov", "+cx16", "+cx8", "+fxsr", "+mmx", "+sahf", "+sse", "+sse2", "+sse3", "+sse4.1", "+ssse3", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(1.000000e+00 : f32) : f32
    %2 = llvm.mlir.poison : vector<4xf32>
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(2 : i32) : i32
    %5 = llvm.mlir.constant(3 : i32) : i32
    %6 = llvm.mlir.constant(2.000000e+00 : f32) : f32
    %7 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x f32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x vector<4xf32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x !llvm.array<4 x f32> {alignment = 16 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %11 {alignment = 4 : i64} : f32, !llvm.ptr
    %19 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %20 = llvm.insertelement %19, %2[%3 : i32] : vector<4xf32>
    %21 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %22 = llvm.insertelement %21, %20[%0 : i32] : vector<4xf32>
    %23 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %24 = llvm.insertelement %23, %22[%4 : i32] : vector<4xf32>
    %25 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> f32
    %26 = llvm.insertelement %25, %24[%5 : i32] : vector<4xf32>
    llvm.store %26, %12 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    %27 = llvm.load %12 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    llvm.store %27, %15 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    llvm.store %6, %13 {alignment = 4 : i64} : f32, !llvm.ptr
    %28 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %29 = llvm.insertelement %28, %2[%3 : i32] : vector<4xf32>
    %30 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %31 = llvm.insertelement %30, %29[%0 : i32] : vector<4xf32>
    %32 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %33 = llvm.insertelement %32, %31[%4 : i32] : vector<4xf32>
    %34 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> f32
    %35 = llvm.insertelement %34, %33[%5 : i32] : vector<4xf32>
    llvm.store %35, %14 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    %36 = llvm.load %14 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    llvm.store %36, %16 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    %37 = llvm.load %15 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    %38 = llvm.load %16 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    llvm.store %37, %9 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    llvm.store %38, %10 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    %39 = llvm.load %9 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    %40 = llvm.load %10 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    %41 = llvm.fadd %39, %40 : vector<4xf32>
    llvm.store %41, %17 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    %42 = llvm.getelementptr inbounds %18[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x f32>
    %43 = llvm.load %17 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    llvm.store %42, %7 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %43, %8 {alignment = 16 : i64} : vector<4xf32>, !llvm.ptr
    %44 = llvm.load %8 {alignment = 16 : i64} : !llvm.ptr -> vector<4xf32>
    %45 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %44, %45 {alignment = 1 : i64} : vector<4xf32>, !llvm.ptr
    llvm.return
  }
}


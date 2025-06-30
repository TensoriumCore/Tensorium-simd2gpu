#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<!llvm.ptr<270> = dense<32> : vector<4xi64>, !llvm.ptr<271> = dense<32> : vector<4xi64>, !llvm.ptr<272> = dense<64> : vector<4xi64>, i64 = dense<64> : vector<2xi64>, i128 = dense<128> : vector<2xi64>, f80 = dense<128> : vector<2xi64>, !llvm.ptr = dense<64> : vector<4xi64>, i1 = dense<8> : vector<2xi64>, i8 = dense<8> : vector<2xi64>, i16 = dense<16> : vector<2xi64>, i32 = dense<32> : vector<2xi64>, f16 = dense<16> : vector<2xi64>, f64 = dense<64> : vector<2xi64>, f128 = dense<128> : vector<2xi64>, "dlti.endianness" = "little", "dlti.mangling_mode" = "o", "dlti.legal_int_widths" = array<i32: 8, 16, 32, 64>, "dlti.stack_alignment" = 128 : i64>, llvm.ident = "clang version 21.0.0git (https://github.com/llvm/llvm-project.git 3c02150f02022292645f6238524f0401a6f5014f)", llvm.target_triple = "x86_64-apple-macosx15.0.0"} {
  llvm.mlir.global private unnamed_addr constant @".str"("tensorium_gpu\00") {addr_space = 0 : i32, dso_local, section = "llvm.metadata"}
  llvm.mlir.global private unnamed_addr constant @".str.1"("tensorium_export/compute_energy_tensorium_gpu.cpp\00") {addr_space = 0 : i32, dso_local, section = "llvm.metadata"}
  llvm.mlir.global appending @llvm.global.annotations() {addr_space = 0 : i32, section = "llvm.metadata"} : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>> {
    %0 = llvm.mlir.zero : !llvm.ptr
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %3 = llvm.mlir.addressof @".str" : !llvm.ptr
    %4 = llvm.mlir.addressof @_Z14compute_energyddi : !llvm.ptr
    %5 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, ptr, i32, ptr)>
    %6 = llvm.insertvalue %4, %5[0] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %7 = llvm.insertvalue %3, %6[1] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %8 = llvm.insertvalue %2, %7[2] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %9 = llvm.insertvalue %1, %8[3] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %10 = llvm.insertvalue %0, %9[4] : !llvm.struct<(ptr, ptr, ptr, i32, ptr)> 
    %11 = llvm.mlir.undef : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>>
    %12 = llvm.insertvalue %10, %11[0] : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>> 
    llvm.return %12 : !llvm.array<1 x struct<(ptr, ptr, ptr, i32, ptr)>>
  }
  llvm.module_flags [#llvm.mlir.module_flag<error, "wchar_size", 4 : i32>, #llvm.mlir.module_flag<min, "PIC Level", 2 : i32>, #llvm.mlir.module_flag<max, "uwtable", 2 : i32>, #llvm.mlir.module_flag<max, "frame-pointer", 2 : i32>]
  llvm.func @_Z14compute_energyddi(%arg0: f64 {llvm.noundef}, %arg1: f64 {llvm.noundef}, %arg2: i32 {llvm.noundef}) -> (f64 {llvm.noundef}) attributes {frame_pointer = #llvm.framePointerKind<all>, no_inline, no_unwind, optimize_none, passthrough = ["mustprogress", "ssp", ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "penryn"]], target_cpu = "penryn", target_features = #llvm.target_features<["+cmov", "+cx16", "+cx8", "+fxsr", "+mmx", "+sahf", "+sse", "+sse2", "+sse3", "+sse4.1", "+ssse3", "+x87"]>, tune_cpu = "generic", uwtable_kind = #llvm.uwtableKind<async>} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(1.000000e+00 : f64) : f64
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(5.000000e-01 : f64) : f64
    %4 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %6 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %7 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %4 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg1, %5 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %arg2, %6 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %1, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.store %2, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1
  ^bb1:  // 2 preds: ^bb0, ^bb3
    %9 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %10 = llvm.load %6 {alignment = 4 : i64} : !llvm.ptr -> i32
    %11 = llvm.icmp "slt" %9, %10 : i32
    llvm.cond_br %11, ^bb2, ^bb4
  ^bb2:  // pred: ^bb1
    %12 = llvm.load %5 {alignment = 8 : i64} : !llvm.ptr -> f64
    %13 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> f64
    %14 = llvm.fmul %13, %12 : f64
    llvm.store %14, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // pred: ^bb2
    %15 = llvm.load %8 {alignment = 4 : i64} : !llvm.ptr -> i32
    %16 = llvm.add %15, %0 overflow<nsw> : i32
    llvm.store %16, %8 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb1 {loop_annotation = #loop_annotation}
  ^bb4:  // pred: ^bb1
    %17 = llvm.load %4 {alignment = 8 : i64} : !llvm.ptr -> f64
    %18 = llvm.fmul %3, %17 : f64
    %19 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> f64
    %20 = llvm.fmul %18, %19 : f64
    llvm.return %20 : f64
  }
}

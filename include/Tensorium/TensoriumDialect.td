
#ifndef TENSORIUM_DIALECT
#define TENSORIUM_DIALECT

include "mlir/IR/OpBase.td"

def Tensorium_Dialect : Dialect {
    let name = "tensorium";
    let summary = "A Tensorium out-of-tree MLIR dialect.";
    let description = [{
        This dialect is an example of an out-of-tree MLIR dialect designed to
        illustrate the basic setup required to develop MLIR-based tools without
        working inside of the LLVM source tree.
    }];
    let cppNamespace = "::mlir::tensorium";
}


class Tensorium_Op<string mnemonic, list<Trait> traits = []> :
        Op<Tensorium_Dialect, mnemonic, traits>;

#endif // TENSORIUM_DIALECT

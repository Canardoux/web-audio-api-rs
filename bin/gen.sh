#!/bin/bash

#rm -rf /Volumes/mac-J/larpoux/.cargo/registry
#cd rust
#cargo clean
#cd ..

#cargo install 'flutter_rust_bridge_codegen@^2.0.0-dev.0'
cd rust

flutter_rust_bridge_codegen generate
if [ $? -ne 0 ]; then
    echo "Error: flutter_rust_bridge_codegen"
    exit -1
fi

cargo build
if [ $? -ne 0 ]; then
    echo "cargo build"
    exit -1
fi

cd ..

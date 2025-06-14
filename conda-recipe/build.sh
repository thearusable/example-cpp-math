#!/bin/bash

pushd ..
mkdir -p build
pushd build || exit

cmake .. -DCMAKE_INSTALL_PREFIX="$PREFIX"

make -j"$(nproc)"

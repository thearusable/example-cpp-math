#!/bin/bash

set -e

pushd ..
mkdir -p build
pushd build

: "${SRC_DIR:=..}"
: "${PYTHON:=$(which python3)}"

cmake "$SRC_DIR" \
    -DCMAKE_INSTALL_PREFIX="$PREFIX" \
    -DPYTHON_EXECUTABLE="$PYTHON"

make -j"$(nproc)"
make install

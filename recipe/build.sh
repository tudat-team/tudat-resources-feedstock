#!/usr/bin/env bash

mkdir build

cd build

cmake \
    -DCMAKE_CXX_STANDARD=14 \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DPREFIX=$PREFIX \
    ..

make -j1

if [[ "$CONDA_BUILD_CROSS_COMPILATION" != "1" ]]; then
  ctest --verbose
fi

make install

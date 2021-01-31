#!/usr/bin/env bash
set -e # fail fast
echo "CMake fast_float C++ library"
mkdir -p priv/fast_float
# Run CMake to configure the project for the local system
cmake -H. -Ssrc/fast_float/include/fast_float -Bpriv/fast_float/build -DCMAKE_BUILD_TYPE=Release
cd priv/fast_float/build
echo "Make the project and build the binaries"
make

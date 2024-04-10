#!/bin/bash
set -e

cd Telegram
./configure.sh "$@"
cmake --build ../out --config "${CONFIG:-RelWithDebInfo}" --parallel -DCMAKE_CXX_FLAGS="-fno-error-unused-variable"

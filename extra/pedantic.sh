#!/usr/bin/env bash
set -ueo pipefail
./bootstrap.sh
./configure --enable-warnings --enable-werror
make clean
exec make

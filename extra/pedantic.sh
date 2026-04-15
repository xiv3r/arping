#!/usr/bin/env bash
set -ueo pipefail
./bootstrap.sh
./configure CFLAGS='-Wall -pedantic -Wextra'
make clean
exec make CFLAGS='-Wall -pedantic -Wextra -Werror -Warith-conversion -Wconversion -Wsign-conversion -Wfloat-conversion'

#!/bin/sh

if [ "x$(uname -s)" = "xOpenBSD" ]; then
        # On OpenBSD, you need to go searching for the autoconf version.
        # Sigh.
        export AUTOCONF_VERSION="$(ls /usr/local/bin/autoconf-* 2>/dev/null \
                | sed 's/.*autoconf-//' \
                | sort -V \
                | tail -1)"
        export AUTOMAKE_VERSION="$(ls /usr/local/bin/automake-* 2>/dev/null \
                | sed 's/.*automake-//' \
                | sort -V \
                | tail -1)"
        echo "Autoconf version: ${AUTOCONF_VERSION}"
        echo "Automake version: ${AUTOMAKE_VERSION}"
fi

exec autoreconf -i

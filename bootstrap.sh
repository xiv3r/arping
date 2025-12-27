#!/bin/sh

if [ "x$(uname -s)" = "xOpenBSD" ]; then
        # On OpenBSD, you need to go searching for the autoconf version.
        # Sigh.
        export AUTOCONF_VERSION=$(/usr/local/bin/autoconf-* --version | sed -n '1s/.* \([0-9.]*\)$/\1/p')
        export AUTOMAKE_VERSION=$(/usr/local/bin/automake-* --version | sed -n '1s/.* \([0-9.]*\)$/\1/p')
        echo "Autoconf version: ${AUTOCONF_VERSION}"
        echo "Automake version: ${AUTOMAKE_VERSION}"
fi

exec autoreconf -i

#!/bin/bash

set -euo pipefail

if [[ $EUID -ne 0 ]]; then
   echo -ne "\nThis script must be run as root. Aborting...\n\n" 1>&2
   exit 1
fi

# TODO: Make lower-case standard home directories
# TODO: Change XDG defaults so it doesn't use capital directories
# TODO: Sync Firefox account
# TODO: Setup i3wm 

# TODO: Clone i3block-utils and build them after installing cargo

# TODO: Limit battery charging to 85%

# TODO: Setup shortcuts for common science glyphs, mu, degree, delta, Delta, without interfering with caps-escape swap

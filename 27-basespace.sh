#!/bin/bash

# Installs the BaseSpace CLI from Illumina

set -euo pipefail

wget "https://api.bintray.com/content/basespace/BaseSpaceCLI-EarlyAccess-BIN/latest/\$latest/amd64-linux/bs?bt_package=latest" -O /usr/local/bin/bs
chmod 755 /usr/local/bin/bs
sudo -u jim bs auth

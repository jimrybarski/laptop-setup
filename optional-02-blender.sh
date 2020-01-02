#!/bin/bash
# Downloads the latest stable build of Blender and compiles/installs it

set -euo pipefail

apt install -y build-essential git subversion cmake libx11-dev libxxf86vm-dev libxcursor-dev libxi-dev libxrandr-dev libxinerama-dev

mkdir -p /tmp/blender-git
pushd /tmp/blender-git
git clone https://git.blender.org/blender.git

# This next line didn't return 0 so I added the "|| true", but it's untested
# "yes" is required to work around an interactive prompt
yes | ./blender/build_files/build_environment/install_deps.sh --with-all || true

pushd /tmp/blender-git/blender
make update
make 

# These have not been done in a full runthrough
popd
mv build_linux /opt/blender
ln -s /opt/blender/bin/blender /usr/local/bin/blender
popd

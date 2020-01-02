#!/bin/bash

# Download, build and install Neovim (required since package in repo is old)
git clone https://github.com/neovim/neovim.git
pushd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release install
popd
rm -rf neovim

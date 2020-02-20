#!/bin/bash

# Installs Pandaseq, a tool that merges paired-end reads

apt install -y build-essential libtool automake zlib1g-dev libbz2-dev pkg-config
pushd /opt
git clone https://github.com/neufeld/pandaseq.git
pushd pandaseq
./autogen.sh 
./configure 
make 
make install
ldconfig
popd
popd

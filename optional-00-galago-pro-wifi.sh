#!/bin/bash

# Compiles the Wifi driver used in the Galago Pro.
# Stock Xubuntu doesn't have a compatible Wifi driver for some reason and nothing in the repos seems to work either. 

tar -xzf iwlwifi.tar.gz -C /tmp/
pushd /tmp/backport-iwlwifi
make -j4 install
popd

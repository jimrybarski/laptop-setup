#!/bin/bash

# Install random scripts to $HOME/scripts

pushd $HOME
rm -rf scripts
sudo -u jim git clone git@gitlab.com:jimrybarski/scripts.git
popd

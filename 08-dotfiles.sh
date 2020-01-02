#!/bin/bash

# Installs my dotfiles

sudo -u jim mkdir -p $HOME/code
pushd "$HOME/code"

if [ ! -e $HOME/code/dotfiles ]; then
    sudo -u jim git clone git@gitlab.com:jimrybarski/dotfiles.git
fi

pushd dotfiles
sudo -u jim bash install.sh
popd
popd

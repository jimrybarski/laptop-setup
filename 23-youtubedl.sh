#!/bin/bash

apt install ffmpeg
# Install youtube-dl in a virtualenv and install a cronjob to keep it up-to-date

sudo -u jim mkdir -p $HOME/.local/bin
sudo -u jim virtualenv -p python3 $HOME/.local/bin/youtubedl-env
sudo -u jim $HOME/.local/bin/youtubedl-env/bin/pip install youtube-dl

# TODO: Install cronjob

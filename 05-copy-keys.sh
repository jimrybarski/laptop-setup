#!/bin/bash

# Copy over GPG and SSH keys from an external hard drive.
# Configure Git to use the GPG key for sigining commits.


signing_key=$(gpg --list-keys --keyid-format 0xLONG 2>&1 | grep sub | grep SA | awk '{print $2}' | sed 's|ed25519/0x||')

git config --global user.signingkey $signing_key

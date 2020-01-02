#!/bin/bash

# remap capslock to escape, both because it is a useless key and to make vim easier to use
# this will not come into effect until after a reboot
if grep --quiet 'XKBOPTIONS=""' /etc/default/keyboard; then
    sed -i 's/XKBOPTIONS=""/XKBOPTIONS="caps:escape"/' /etc/default/keyboard
    dpkg-reconfigure -f noninteractive keyboard-configuration 2>/dev/null
fi

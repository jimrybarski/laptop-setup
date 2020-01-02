#!/bin/bash

# Install Google Chrome web browser
(curl -L "https://www.rybarski.com/chrome.deb" > "/tmp/chrome.deb" && dpkg -i "/tmp/chrome.deb" && rm /tmp/chrome.deb) || echo "Could not install Chrome"

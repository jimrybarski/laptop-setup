#!/bin/bash

# Installs Zotero

curl -L "https://www.zotero.org/download/client/dl?channel=release&platform=linux-x86_64" > /tmp/zotero.tar.bz2
# we use --no-same-owner to make sure it's owned by the root user and not some random UID
tar --no-same-owner -C /tmp -xf /tmp/zotero.tar.bz2
mv /tmp/Zotero_linux-x86_64 /opt/zotero
chmod -R 755 /opt/zotero

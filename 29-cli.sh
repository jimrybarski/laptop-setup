#!/bin/bash

sudo -u jim cargo install bat fd-find ripgrep

cat > $HOME/.local/bin/rg << EOF
#!/bin/sh
# Retain colors when paging output from ripgrep

/home/jim/.cargo/bin/rg -p "$@" | less -RFX

EOF

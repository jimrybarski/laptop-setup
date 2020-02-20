cat > output << EOF
#!/bin/sh

/home/jim/.cargo/bin/rg -p "$@" | less -RFX
EOF

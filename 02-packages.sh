# Remove default packages and install others I need. This is not comprehensive
# Other scripts may also install packages that are uniquely used by those local things
apt update
cat uninstall.txt | xargs apt remove -y
apt autoremove -y 
apt upgrade -y
apt clean
cat install.txt | xargs apt install --no-install-recommends -y

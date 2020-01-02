# Disable guest user login
printf "[SeatDefaults]\nallow-guest=false\n" > /usr/share/lightdm/lightdm.conf.d/50-no-guest.conf

# Disable webcam
if grep -q "blacklist uvcvideo" "/etc/modprobe.d/blacklist.conf"; then
  echo "webcam already disabled"
else
  printf "\n# Disable webcam\nblacklist uvcvideo\n" >> /etc/modprobe.d/blacklist.conf
fi

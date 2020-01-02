#!/bin/bash

# TODO: This is no longer valid, we just need to copy over GPG subkeys and SSH keypairs, and import the GPG keys, and also copy over passwords.

read -p "Move the hard drive to an existing computer and run the new-keys script. Once you've done that and have moved the hard drive back to this computer, press enter to continue."

# Let the user pick the root directory of their external hard drive. 
# We assume it will be mounted at /media but the user is free to navigate anywhere in case that's wrong.
# Since the dialog picker isn't good at autocomplete we loop until a real directory is picked.
while [ 1 ]; do 
    directory=$(dialog --stdout --title "Pick external HDD root directory." --dselect /media 24 48)
    if [[ -d $directory ]]; then
        break
    fi
done

sudo -u jim cp -r $directory/new-keys/.password-store $HOME/


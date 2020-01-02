# Computer Setup

#### Usage

    1. Install Xubuntu
    2. Establish an Internet connection
    3. Plug in an external hard drive and mount it
    4. Execute the command `sudo bash run-me-first.sh`
    5. You will be prompted to transfer SSH and GPG keys to the external hard drive
    6. Eject the hard drive
    7. Transfer the SSH and GPG keys to an existing computer

#### On the existing computer:

    8. Upload the SSH key to all servers and Github/Gitlab
    9. Import the new public GPG key
    10. `pass init` the new key
    11. Copy `.password-store` to the external hard drive
    12. Eject the hard drive

#### Continue the install script

    13. The install script will copy the passwords over the new computer
    14. Continue the install script to complete the setup process

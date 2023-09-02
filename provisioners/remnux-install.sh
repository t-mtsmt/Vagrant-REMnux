#!/bin/sh

# upgrade packages
apt update
apt upgrade -y

# install remnux
wget https://REMnux.org/remnux-cli -O /usr/local/bin/remnux
chmod +x /usr/local/bin/remnux
apt install -y gnupg
/usr/local/bin/remnux install

# enable ssh service for vagrant
systemctl enable ssh
#!/bin/sh

# upgrade packages
apt update
apt upgrade -y

# install remnux-cli
curl -Lo remnux-cli-linux https://github.com/REMnux/remnux-cli/releases/download/v1.3.4/remnux-cli-linux
chmod +x remnux-cli-linux
mv remnux-cli-linux /usr/local/bin/remnux 
apt install -y gnupg

# install remnux
/usr/local/bin/remnux install

# enable ssh service for vagrant
systemctl enable ssh
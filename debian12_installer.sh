#!/bin/bash
# Install 3CX on Debian 12 (Bookworm)

sudo apt update
sudo apt upgrade -y

cd ~/
sudo apt install sudo wget gnupg2 dphys-swapfile apt-transport-https gpg net-tools nginx sngrep -y

wget -O- https://repo.3cx.com/key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/3cx-archive-keyring.gpg > /dev/null
echo "deb [arch=amd64 by-hash=yes signed-by=/usr/share/keyrings/3cx-archive-keyring.gpg] http://repo.3cx.com/3cx bookworm main" | tee /etc/apt/sources.list.d/3cxpbx.list
sudo apt update

sudo rm -f /etc/nginx/sites-enabled/default

sudo systemctl reload nginx

sudo apt install 3cxpbx -y

# Enter option 1 and open port 5015 of the server IP in your browser to access the configuration page.
# If this page does not appear enter the following command:

# /usr/sbin/3CXWizard --cleanup

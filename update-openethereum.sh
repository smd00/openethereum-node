#!/bin/bash

# =============================================
# Author: Daniel Montoya
# Website: montoya.com.au

# Script to update from parity to openethereum

# Usage:
# cd $HOME/eth && curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/update-openethereum.sh && sudo chmod +x ./update-openethereum.sh && ./update-openethereum.sh

# ============================================= 
# Stop Parity
sudo systemctl stop parity

# =============================================
# Download dependencies
echo "# START -----------------------------------------------------------------"
echo "# DM    download /openethereum.service and /config.toml"
echo "# END   -----------------------------------------------------------------"
curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/openethereum.service 
# curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/config.toml 

# =============================================
# Check additional volume (OPTIONAL)
echo "# START -----------------------------------------------------------------"
echo "# DM    check volume"
echo "# END   -----------------------------------------------------------------"
lsblk #Check the volume name (i.e. xvdb)
df -h /dmdata #Check the disk space to confirm the volume mount

lsblk #List the available disks
sudo file -s /dev/xvdb #Check if the volume has any data

# =============================================
# DMS
echo "# START -----------------------------------------------------------------"
echo "# DM    Install rust"
echo "# END   -----------------------------------------------------------------"
curl https://sh.rustup.rs -sSf | sh

echo "# START -----------------------------------------------------------------"
echo "# DM    Ensure Perl is installed"
echo "# END   -----------------------------------------------------------------"
perl -v

echo "# START -----------------------------------------------------------------"
echo "# DM    Install Ubuntu Updates"
echo "# END   -----------------------------------------------------------------"
sudo apt-get update -y

echo "# START -----------------------------------------------------------------"
echo "# DM    Install Yasm"
echo "# END   -----------------------------------------------------------------"
# sudo apt-get install yasm -y

echo "# START -----------------------------------------------------------------"
echo "# DM    Install dependencies"
echo "# END   -----------------------------------------------------------------"
# sudo apt-get install build-essential cmake libudev-dev -y

echo "# START -----------------------------------------------------------------"
echo "# DM    Build OpenEthereum from Source Code"
echo "# END   -----------------------------------------------------------------"
wget https://github.com/openethereum/openethereum/releases/download/v3.0.1/openethereum-linux-v3.0.1.zip

sudo apt-get install unzip -y

unzip openethereum-linux-v3.0.1.zip -d $HOME/eth/openethereum-v3

chmod +x $HOME/eth/openethereum-v3/openethereum

# cd $HOME/eth/openethereum-v3/
# sudo ./openethereum
# ./target/release/openethereum

echo "# START -----------------------------------------------------------------"
echo "# DM    Copy openethereum.service and config.toml"
echo "# END   -----------------------------------------------------------------"
# sudo mkdir /dmdata/io.parity.ethereum
# sudo mkdir -p $HOME/.local/share/io.parity.ethereum/
cat $HOME/eth/openethereum.service | sudo tee /etc/systemd/system/openethereum.service
# cat $HOME/eth/config.toml | sudo tee $HOME/.local/share/io.parity.ethereum/config.toml

sudo chmod +x /etc/systemd/system/openethereum.service

sudo install $HOME/eth/openethereum-v3/openethereum /usr/bin/openethereum

# sudo chown -R ubuntu:ubuntu /dmdata

echo "# START -----------------------------------------------------------------"
echo "# DM    Enable and start openethereum"
echo "# END   -----------------------------------------------------------------"
sudo systemctl enable openethereum
sudo systemctl start openethereum

sudo systemctl status openethereum
journalctl -f -u openethereum.service
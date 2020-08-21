#!/bin/bash

# =============================================
# Author: Daniel Montoya
# Website: montoya.com.au

# Usage:
# mkdir $HOME/eth && cd $HOME/eth && curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/centos/setup.sh && sudo chmod +x ./setup.sh && ./setup.sh

# =============================================
# Download dependencies
echo "# START -----------------------------------------------------------------"
echo "# DM    download /openethereum.service and /config.toml"
echo "# END   -----------------------------------------------------------------"
curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/openethereum.service 
curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/config.toml 

# =============================================
# Setup additional volume (OPTIONAL)
echo "# START -----------------------------------------------------------------"
echo "# DM    mount volume"
echo "# END   -----------------------------------------------------------------"
lsblk #Check the volume name (i.e. xvdb)
sudo mkfs.ext4 /dev/xvdb #Format the volume to ext4 filesystem
sudo mkdir /dmdata #Create a directory to mount the new volume
sudo mount /dev/xvdb /dmdata/ #Mount the volume to dmdata directory
df -h /dmdata #Check the disk space to confirm the volume mount

#EBS Automount on Reboot
sudo cp /etc/fstab /etc/fstab.bak
echo "/dev/xvdb  /dmdata/  ext4    defaults,nofail  0   0" | sudo tee -a /etc/fstab #Make a new entry in /etc/fstab
sudo mount -a #Check if the fstab file has any errors

lsblk #List the available disks
sudo file -s /dev/xvdb #Check if the volume has any data

# =============================================
# DMS
echo "# START -----------------------------------------------------------------"
echo "# DM    Install rust"
echo "# END   -----------------------------------------------------------------"
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

echo "# START -----------------------------------------------------------------"
echo "# DM    Ensure Perl is installed"
echo "# END   -----------------------------------------------------------------"
perl -v

echo "# START -----------------------------------------------------------------"
echo "# DM    Install Updates"
echo "# END   -----------------------------------------------------------------"
cat /etc/system-release
sudo yum update -y

echo "# START -----------------------------------------------------------------"
echo "# DM    Install dependencies"
echo "# END   -----------------------------------------------------------------"
sudo yum install libudev-devel
sudo yum group install "Development Tools"
sudo yum install unzip -y

echo "# START -----------------------------------------------------------------"
echo "# DM    Build OpenEthereum from Source Code"
echo "# END   -----------------------------------------------------------------"
wget https://github.com/openethereum/openethereum/releases/download/v3.0.1/openethereum-linux-v3.0.1.zip

unzip openethereum-linux-v3.0.1.zip -d $HOME/eth/openethereum-v3

chmod +x $HOME/eth/openethereum-v3/openethereum

# cd $HOME/eth/openethereum-v3/
# sudo ./openethereum
# ./target/release/openethereum

echo "# START -----------------------------------------------------------------"
echo "# DM    Copy openethereum.service and config.toml"
echo "# END   -----------------------------------------------------------------"
sudo mkdir /dmdata/io.parity.ethereum
sudo mkdir -p $HOME/.local/share/io.parity.ethereum/
cat $HOME/eth/openethereum.service | sudo tee /etc/systemd/system/openethereum.service
cat $HOME/eth/config.toml | sudo tee $HOME/.local/share/io.parity.ethereum/config.toml

sudo chmod +x /etc/systemd/system/openethereum.service

sudo install $HOME/eth/openethereum-v3/openethereum /usr/bin/openethereum

sudo chown -R ec2-user:ec2-user /dmdata

echo "# START -----------------------------------------------------------------"
echo "# DM    Enable and start openethereum"
echo "# END   -----------------------------------------------------------------"
sudo systemctl enable openethereum
sudo systemctl start openethereum

sudo systemctl status openethereum
journalctl -f -u openethereum.service
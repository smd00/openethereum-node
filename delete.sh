#!/bin/bash

# =============================================
# Usage:
# curl -O https://brighteyetea.com/crypto/eth/delete.sh
# sudo chmod +x ./delete.sh && ./delete.sh
# =============================================

echo "# START -----------------------------------------------------------------"
echo "# DM    Delete folders and files"
echo "# END   -----------------------------------------------------------------"
sudo rm -r $HOME/eth/
sudo rm -r $HOME/.local/share/
sudo rm -r /dmdata/*
sudo rm /etc/systemd/system/openethereum.service


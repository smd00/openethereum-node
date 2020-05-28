#!/bin/bash

# =============================================
# Usage:
# curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/delete.sh && sudo chmod +x ./delete.sh && ./delete.sh
# =============================================

echo "# START -----------------------------------------------------------------"
echo "# DM    Delete folders and files"
echo "# END   -----------------------------------------------------------------"
sudo rm -r $HOME/eth/
sudo rm -r $HOME/.local/share/
sudo rm -r /dmdata/*
sudo rm /etc/systemd/system/openethereum.service


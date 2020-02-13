#!/bin/bash
#this is a comment-the first line sets bash as the shell script

echo 'BlockchainInfo:'
sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass  getblockchaininfo
Blockcount=$(sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass  getblockcount)
osascript -e 'display notification "Blockcount '$Blockcount'" with title "GoldNode"'

# Confirm exit command
echo ""
read -n 1 -s -r -p "Press any key to continue";
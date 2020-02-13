#!/bin/bash
#this is a comment-the first line sets bash as the shell script

echo 'DGLD Balance'
sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass getbalance
Balance=$(sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass getbalance)
osascript -e 'display notification "Balance Retrieved" with title "GoldNode"'
echo ""

# Confirm exit command
read -n 1 -s -r -p "Press any key to continue";
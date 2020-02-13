#!/bin/bash
#this is a comment-the first line sets bash as the shell script

sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass getmempoolinfo
osascript -e 'display notification "MemPool Information Retrieved" with title "Mem Pool"'

# Confirm exit command
echo ""
read -n 1 -s -r -p "Press any key to continue";
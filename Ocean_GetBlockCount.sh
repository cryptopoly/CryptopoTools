
echo 'BlockCount:'
sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass getblockcount

BlockCount=$(sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass getblockcount)
# osascript -e 'display notification "BlockCount '$BlockCount'" with title "GoldNode"'

# Confirm exit command
echo ""
read -n 1 -s -r -p "Press any key to continue";
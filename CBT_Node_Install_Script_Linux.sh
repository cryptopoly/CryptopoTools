# Step 1 - Open terminal
# Step 2 - Type 'nano cbt.sh' and press Enter [nano text editor appears]
# Step 3 - Copy below script into nano
# Step 4 - Press Ctrl+x
# Step 5 - Type 'y'
# Step 6 - Press Enter to save
# Step 7 - Type 'chmod +x cbt.sh' and press Enter
# Step 8 - Type './cbt.sh' and press Enter
# Step 9 - Enjoy!


#### COPY BELOW INTO NANO ###

# Log stuff
set -x
# Install stuff
sudo apt install git -y
git clone https://github.com/commerceblock/config ocean
sudo apt install docker -y
sudo apt install docker-compose -y
sudo apt autoremove -y
cd ocean/mainnet/docker

# Run Stuff
sudo docker-compose -p cbt up -d
sleep 10
sudo docker exec cbt_ocean_1 ocean-cli -rpcport=8332 -rpcuser=ocean -rpcpassword=oceanpass getblockchaininfo

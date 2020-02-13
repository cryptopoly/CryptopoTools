
if pgrep -x "oceand" | grep -v pgrep >&-
then
	echo "DGLD and CBT Nodes are running"
else
sudo docker-compose -f $HOME/dgld/mainnet/docker/guardnode/docker-compose.yml up -d &
sleep 2
fi

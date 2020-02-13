#clear
printf '\033[8;50;120t'

dgld="sudo docker exec guardnode_ocean_1 ocean-cli -rpcport=8443 -rpcuser=ocean -rpcpassword=oceanpass getblockchaininfo"
printf $dgld

if pgrep -x "oceand" | grep -v pgrep >&-
then
	echo "DGLD and CBT Nodes are running"
else
sudo docker-compose -f $HOME/dgld/mainnet/docker/guardnode/docker-compose.yml up -d &
sleep 2
fi

RED='\033[0;31m'
AMBER='\033[0;33m'
NC='\033[0m' # No Colour

while true; do
	#clear
	echo "Welcome to the DGLD GuardNode Command Centre"
	echo ""

# Current date
echo -n "Date: "
date -u 
echo ""

# GoldNode Sync Status
echo -n "GoldNode Status: "
oceandstatus=$(pgrep oceand | awk '{ print "Online" }' ) 
if test $oceandstatus > 0 ; 
then
	echo "Running"
	echo ""
	
	# DGLD explorer blockheight via API
	echo -n "DGLD Blockheight: "
	blockheight_exp=$(curl -s https://explorer.dgld.ch/api/info |\
	jq '.blockheight')
	echo -e $blockheight_exp
	echo ""

# Blockchain sync check from explorer api [+/- block sync tolerance level]
if
	[[ $blockheight_node == '' ]]; then blockheight_node=$"0"; fi
while blockheight_node=$($HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main/ getblockcount)
(( $blockheight_node < $blockheight_exp ));
do
	printf "\033[1A"
	printf "\033[5m${AMBER}Node synchronising...$blockheight_node${NC}\033[0m"
	echo ""
done
	printf "\033[1A"
	echo -ne "Local Node Blockheight: "; echo $blockheight_node;
else printf "${RED}Node not running${NC}"; echo ""
fi


# Show Menu
echo ""
menu=$(ls -lh *.sh | awk '{ print ++lvalue, $9 }')
menucount=$(echo "$menu"|wc -l)
echo "$menu"
echo ""

# Menu ID Entry
echo "Choose an option from 1 to "$menucount" and press enter:"
read menuid
echo ""

# Exit clause
if [[ -z $menuid ]] ; then exec
elif [[ $menuid == "00" ]] ; then exit ; echo "Exiting DGLD Guardian Command Centre"; echo ""; exit
elif ! (($menuid >= 1 && $menuid <= $menucount)) ; then exec
else

# Execute command file
exec=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')
./"$exec"
echo ""


# Confirm exit command
read -n 1 -s -r -p "Press any key to continue"
echo ""
echo "==============================================================================================================================================================================================================================================================================================================================================================="
echo ""

fi
done


#!/bin/bash

#GetBlockHash

clear

while true; do
	echo "Enter Blockheight for Blockhash"
	read Blockheight
	if test $Blockheight == "exit"; then break
else
	./ocean/src/ocean-cli -datadir=./goldnode_main getblockhash $Blockheight &
	Blockhash=$(./ocean/src/ocean-cli -datadir=./goldnode_main getblockhash $Blockheight)
	osascript -e 'display notification "Blockhash: '$Blockhash'" with title "GoldNode"'
	echo ""
fi
done

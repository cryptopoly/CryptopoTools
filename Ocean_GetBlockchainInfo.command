#!/bin/bash
#this is a comment-the first line sets bash as the shell script

clear
echo "Checking for running ocean service"
	sleep 2
	echo -e
	if pgrep -x "oceand" | grep -v pgrep >&-
then
	echo 'BlockchainInfo:'
	$HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main getblockchaininfo
	Blockcount=$($HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main getblockcount)
	osascript -e 'display notification "Blockcount '$Blockcount'" with title "GoldNode"'
else
	echo "Ocean server starting..."
	echo -e
	$HOME/ocean/src/oceand -datadir=$HOME/goldnode_main -v &
	sleep 2
	echo 'BlockchainInfo:'
	$HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main getblockchaininfo
	Blockcount=$($HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main getblockcount)
	osascript -e 'display notification "goldnode has started successfully" with title "GoldNode"'
fi


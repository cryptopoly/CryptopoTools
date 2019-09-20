#!/bin/bash
#this is a comment-the first line sets bash as the shell script

clear
echo 'BlockchainInfo:'
./ocean/src/ocean-cli -datadir=./goldnode_main/ getblockchaininfo

Blockcount=$(./ocean/src/ocean-cli -datadir=./goldnode_main/ getblockcount)
osascript -e 'display notification "Blockcount '$Blockcount'" with title "GoldNode"'

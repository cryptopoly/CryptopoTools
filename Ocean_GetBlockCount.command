#!/bin/bash
#this is a comment-the first line sets bash as the shell script

clear
echo 'BlockCount:'
./ocean/src/ocean-cli -datadir=./goldnode_main/ getblockcount

BlockCount=$(./ocean/src/ocean-cli -datadir=./goldnode_main/ getblockcount)
osascript -e 'display notification "BlockCount '$BlockCount'" with title "GoldNode"'

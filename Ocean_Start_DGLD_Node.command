#!/bin/bash
#this is a comment-the first line sets bash as the shell script


ps -ef | grep oceand | grep -v grep
./ocean/src/oceand -datadir=./goldnode_main -v &
sleep 2
./ocean/src/ocean-cli -datadir=./goldnode_main getblockchaininfo
osascript -e 'display notification "goldnode has started successfully" with title "GoldNode"'
exit


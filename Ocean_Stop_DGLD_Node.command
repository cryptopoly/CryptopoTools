#!/bin/bash
#this is a comment-the first line sets bash as the shell script

clear
./ocean/src/ocean-cli -datadir=./goldnode_main stop
sleep 2
osascript -e 'display notification "goldnode has stopped successfully" with title "GoldNode"'

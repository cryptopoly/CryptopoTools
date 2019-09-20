#!/bin/bash
#this is a comment-the first line sets bash as the shell script

clear
echo 'DGLD Balance'
./ocean/src/ocean-cli -datadir=./goldnode_main getbalance
Balance=$(./ocean/src/ocean-cli -datadir=./goldnode_main/ getbalance)
osascript -e 'display notification "Balance Retrieved" with title "GoldNode"'
exit;
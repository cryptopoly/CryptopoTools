#!/bin/bash
#this is a comment-the first line sets bash as the shell script

clear
echo 'UTXO Asset Info'
./ocean/src/ocean-cli -datadir=./goldnode_main getutxoassetinfo
exit;
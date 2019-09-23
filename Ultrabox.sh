#!/bin/bash

echo "Ocean server starting..."
echo -e
sleep 2
echo "BlockCount:"
echo -e
BlockCount=$($HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main getblockcount)
echo $BlockCount
osascript -e 'display notification "GoldNode has started with BlockCount '$BlockCount'" with title "GoldNode"'
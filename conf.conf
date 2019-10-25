
# Ocean client and data directory as variable
oceancli=$"""ocean-cli -datadir=$HOME/goldnode_main"""
# $oceancli 'getblockchaininfo'

blockcount=$($HOME/ocean/src/ocean-cli -datadir=$HOME/goldnode_main/ getblockcount)
oceandstatus=$(pgrep oceand | awk '{ print "Online" }' ) 
menu=$(ls -lh *.command | awk '{ print ++lvalue, $9 }')
command=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')


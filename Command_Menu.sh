#!/bin/bash

clear
cd
cd $HOME/asset-mapping/macos-scripts

./Ocean_Start_DGLD_Node.command

while true; do
	clear
	echo "Welcome to the Command Launcher Menu"
	echo ""
	menu=$(ls -lh *.command | awk '{ print ++lvalue, $9 }')
	echo "$menu"
	echo ""
	echo $date
	echo "Type menu number and press enter:"
	read menuid
	echo ""
	if test $menuid == "exit"; then break
else
	command=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')
	./"$command"
	echo ""
	read -n 1 -s -r -p "Press any key to continue"
	clear
fi
done


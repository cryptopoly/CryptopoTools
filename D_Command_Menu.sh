#!/bin/bash

clear
cd
cd $HOME/asset-mapping/macos-scripts

while true; do
	echo "Welcome to the D Launcher Menu"
	echo ""
	menu=$(ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }')
	echo "$menu"
	echo ""
	echo "Type menu number and press enter:"
	read menuid
	if test $menuid == "exit"; then break
else
	command=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')
	./"$command"
	echo ""
	read -n 1 -s -r -p "Press any key to continue"
	clear
fi
done


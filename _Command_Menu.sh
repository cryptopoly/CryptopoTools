#!/bin/bash

clear
cd
cd $HOME/Cryptopotools

while true; do
	echo "Welcome to the Shell Launcher Menu"
	echo ""
	menu=$(ls -lh | grep ".sh" | awk '{ print ++lvalue, $9 }')
	echo "$menu"
	echo ""
	echo "Type menu number and press enter:"
	read menuid
	if test $menuid == "exit"; then break
else
	shell=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')
	./"$shell"
	echo ""
	read -n 1 -s -r -p "Press any key to continue"
	clear
fi
done


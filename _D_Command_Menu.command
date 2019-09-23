#!/bin/bash

clear

cd $HOME/asset-mapping/macos-scripts

ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }'

echo "Enter Menu Number And Press Enter"

read Menu

echo Menu
grep  (ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }')

MenuNumber=$(ls -lh | grep ".command" | awk '{ print ++lvalue}')


while true; do
	echo "Welcome to D Launcher"
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

#!/bin/bash

clear
cd
cd asset-mapping/macos-scripts

while true; do
	menu=$(ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }')
	echo "$menu"
	echo "Enter Menu Number And Press Enter"
	read menuid
	if test $menu == "exit"; then break
else
	echo "You selected:"
	echo "$menu" | grep -w "$menuid"
	command=$(echo "$menu" | grep -w "$menuid" |awk '{ print $2 }')
	./"$command"
fi
done


#!/bin/sh








#cd
#cd asset-mapping/macos-scripts
#ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }'
#echo "Enter Menu Number And Press Enter"
#read menu
#echo $menu

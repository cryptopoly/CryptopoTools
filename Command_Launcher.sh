#!/bin/bash

clear
cd
cd $HOME/CryptopoTools/

while true; do
	clear
	echo "Welcome to the Command Launcher Suite"
	echo ""

	# Current date
	echo -n "Date: "
	date
	echo ""

	# Show Menu
	echo ""
	menu=$(ls -lh *.command | awk '{ print ++lvalue, $9 }')
	echo "$menu"
	echo ""

	# Menuid entry
	echo "Type menu number and press enter:"
	read menuid
	echo ""
	if test $menuid == "000"; then exit
elif test $menuid == "999" ; then break $HOME/Command_Menu.sh #test this actually works
else
	# Execute command file
	command=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')
	./"$command"
	echo ""
	read -n 1 -s -r -p "Press any key to continue"
	clear
fi
done


#!/bin/bash

#WORKING! Just looks messy

clear
cd
cd $HOME/CryptopoTools

echo "Please enter the working directory e.g. $HOME/CryptopoTools"
read wrkdir
cd $wrkdir

while true; do
	cd $wrkdir
	clear
	echo "Welcome to the Python, Shell and Command Launcher Suite"
	echo ""
	
	# Current date
	echo -n "Date: "
	date
	echo ""

	# Construct and show menu [1] [menu_v1 indexes all executable file names only, menu_v2 indexes all executable files and paths required for execution]
	echo ""
	menu_v1=$(find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) -exec basename {} \; | awk '{ print ++lvalue, $1 }')
	menu_v2=$(find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) | awk '{ print ++lvalue, $1 }')
	echo "$menu_v1"
	echo ""

	# Menu ID Entry
	echo "Type menu number and press enter:"
	read menuid
	echo ""
	echo ''

	# Exit clause
	if test $menuid == "=="; then exit
		elif test $menuid == "--" ; then break $HOME/Command_Menu.sh #test this actually works, should re-laod the command with any new edits
else
	clear
	cd
	# Execute command file
	exec=$(echo "$menu_v2" | grep -w "$menuid" | awk '{ print $2 }')
	echo "$exec"
	echo -e
	# Can simplify this down with or statement] / or else
	if [[ "$exec" == *".sh"* ]]; then bash "$exec"
	elif [[ "$exec" == *".command"* ]]; then bash "$exec"
	elif [[ "$exec" == *".desktop"* ]]; then bash "$exec"
	else
		python3 "$exec"
fi
echo ""
read -n 1 -s -r -p "Press any key to continue"
clear
fi
done

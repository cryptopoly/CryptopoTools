#!/bin/bash

# Terminal size/position
printf '\033[8;65;90t'

cd $HOME/CryptopoTools
	clear
	echo "Welcome to the Python, Shell and Command Launcher Suite"
	echo ""
	echo ""
	echo "Please enter the working directory e.g. $HOME/CryptopoTools"
read wrkdir

#Prevent searching through system folders due to null entry
if [ -z $wrkdir ]; then $wrkdir = "1"; fi

while true; do
	cd "$wrkdir"
	clear
	echo "Welcome to the Python, Shell and Command Launcher Suite"
	echo ""

# Current date
echo -n "Date: "
date
echo ""

# PWD
echo -n "Working Directory: "; pwd

# Construct and show menu [1] [menu_v1 indexes all executable file names only, menu_v2 indexes all executable files and paths required for execution]
echo ""
menu_v1=$(find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) -exec basename {} \; | awk '{ print ++lvalue, $1 }' | grep -v '/\.' )
menu_v2=$(find $(pwd) \( -name "*.sh" -o -name "*.command" -o -name "*.desktop" -o -name "*.py" \) | awk '{ print ++lvalue, $1 }' | grep -v '/\.' ) #grep to remove hidden files from search
menucount=$(echo "$menu_v1"|wc -l)
echo "$menu_v1"
echo ""

# Menu ID Entry
echo "Choose item 1 to"$menucount" and press enter:"
read menuid

# Exit clause
if [[ -z $menuid ]] ; then exec
elif [[ $menuid == "00" ]] ; then exit ; echo "Thanks for flying with CryptopoTools!"; echo ""; exit
elif ! (($menuid >= 1 && $menuid <= $menucount)) ; then exec
else clear
# Execute command file
exec=$(echo "$menu_v2" | grep -w "$menuid" | awk '{ print $2 }')
echo "$exec"
echo -e
# Can simplify this down with or statement] / or else
if [[ "$exec" == *".sh"* ]]; then bash "$exec"
elif [[ "$exec" == *".command"* ]]; then bash "$exec"
elif [[ "$exec" == *".desktop"* ]]; then bash "$exec"
else python3 "$exec"
fi
echo ""
read -n 1 -s -r -p "Press any key to continue"
clear
fi
done


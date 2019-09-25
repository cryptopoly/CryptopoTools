#!/bin/bash

clear
cd
cd $HOME/CryptopoTools

echo "Please enter the working directory e.g. $HOME/CryptopoTools"
read wrkdir
cd $wrkdir

while true; do
	echo "Welcome to the Python, Shell and Command Launcher Suite"
	echo ""
	menu=$(ls -lh | egrep ".py|.sh|.command|.desktop" | awk '{ print ++lvalue, $9 }')
	echo "$menu"
	echo ""
	echo "Type menu number and press enter:"
	read menuid
	if test $menuid == "000"; then exit
else
	clear
	exec=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')
	echo "$exec"
	echo -e
	if [[ "$exec" == *".sh"* ]]; then ./"$exec"
	elif [[ "$exec" == *".command"* ]]; then ./"$exec"
	else
		python3 "$exec"
fi
echo ""
read -n 1 -s -r -p "Press any key to continue"
clear
fi
done

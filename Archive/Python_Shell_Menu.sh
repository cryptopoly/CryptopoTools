#!/bin/bash

clear
cd
cd $HOME/CryptopoTools

while true; do
	echo "Welcome to the Python and Shell Launcher Menu"
	echo ""
	menu=$(ls -lh | egrep ".py|.sh" | awk '{ print ++lvalue, $9 }')
	echo "$menu"
	echo ""
	echo "Type menu number and press enter:"
	read menuid
	if test $menuid == "exit"; then break
else
	clear
	exec=$(echo "$menu" | grep -w "$menuid" | awk '{ print $2 }')
	echo "$exec"
	echo -e
	if [[ "$exec" == *".sh"* ]]; then
		./"$exec"
	else
		python3 "$exec"
	fi
	echo ""
	read -n 1 -s -r -p "Press any key to continue"
	clear
fi
done

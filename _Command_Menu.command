#!/bin/bash

clear
cd
cd asset-mapping/macos-scripts

ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }'

while true; do
	echo "Enter Menu Number And Press Enter"
	read Menu
	if test $Menu == "exit"; then break
else
	ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }' | grep $Menu
fi
done

#cd
#cd asset-mapping/macos-scripts
#ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }'
#echo "Enter Menu Number And Press Enter"
#read Menu
#echo $Menu


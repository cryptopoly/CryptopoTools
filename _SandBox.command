#!/bin/sh

clear
cd
cd asset-mapping/macos-scripts

menu=$(ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }')

echo "$menu"
echo "Enter Menu Number And Press Enter"
read menuid
echo "You selected:"
echo "$menu" | grep -w "$menuid"

command=$(echo "$menu" | grep -w "$menuid" |awk '{ print $2 }')

./"$command"
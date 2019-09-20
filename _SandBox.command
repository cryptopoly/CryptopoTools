#!/bin/sh

clear
cd
cd asset-mapping/macos-scripts

ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }'

echo "Enter Menu Number And Press Enter"

read menu

echo "You selected:"
ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }' | grep "*$menu*"


#!/bin/bash

cd

cd asset-mapping/macos-scripts

ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }'

echo "Enter Menu Number And Press Enter"

read Menu

echo $Menu

grep $Menu | ls -lh | grep ".command" | awk '{ print ++lvalue, $9 }'


#!/bin/bash

# ls -lh

find $(pwd) *".command" *".sh" *".desktop" *".py" -type f






find ./ *".command" *".sh" *".desktop" *".py"

find *".command" *".sh" *".desktop" *".py"





#all columns
menu=$(ls -lihR | egrep ".py|.sh|.command|.desktop")
echo "$menu"

#2 colums added
menu=$(ls -lhihR | egrep ".py|.sh|.command|.desktop" | awk '{ print ++lvalue, $10 }')

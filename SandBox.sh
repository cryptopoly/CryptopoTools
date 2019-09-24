#!/bin/bash



for i in $(ls); do echo "$i"; done; 

for dir in */; do
  echo "$dir"
done

find . -type d -exec echo '{}' \;


You can use find

find . -type d > output.txt
or tree

tree -d > output.txt
tree, If not installed on your system.

sudo apt-get install tree


find . -name "*.sh	" | awk '{ print ++lvalue }' 


menu=$(ls -lh *.sh | awk '{ print ++lvalue, $9 }')
echo "$menu"

menu=$(ls -lh | grep ".py|.sh|.command" | print '{ print ++lvalue, $9 }')
echo "$menu"


menu=$(ls -lh *.sh | awk '{ print ++lvalue }' | cut -d' ' -f 12- )
echo "$menu"
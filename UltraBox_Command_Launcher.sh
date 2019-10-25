
# menu_v2 is the full path
menu_v2=$(find $(pwd) | awk '{ print ++lvalue, $1 }' | grep -v '/\.' ) #grep to remove hidden files from search
echo $menu_v2

#!/bin/bash

clear
echo "Which process would you like to check?"
read process
if pgrep -x "$process" | grep -v pgrep >&-
then
  echo -e
  echo "The process" "$process" "is running"
  echo -e
else
  echo -e
  echo "The" "$process" "process is not running"
  echo -e
fi

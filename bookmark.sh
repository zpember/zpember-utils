#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BOOKMARKS="$DIR/bookmarks.txt"

if [ "$#" -ne 2 ]
then
  "Invalid usage: 2 arguments required of the form <label, URL>"
  exit 1
fi

echo "Adding link: $1 $2" 
echo "\"$1\" \"$2\"" >> $BOOKMARKS
./generate_index.sh

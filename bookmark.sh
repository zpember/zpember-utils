#!/bin/bash
source env.sh

if [ "$#" -ne 2 ]
then
  "Invalid usage: 2 arguments required of the form <label, URL>"
  exit 1
fi

echo "Adding link: $1 $2" 
echo "\"$1\" \"$2\"" >> $BOOKMARKS
./generate_index.sh

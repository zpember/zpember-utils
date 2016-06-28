#!/bin/bash
source env.sh

echo "Generating index.html" 
mapfile ARRAY < <(sort $BOOKMARKS)

for ((i=0; i<${#ARRAY[@]}; i++));
do
  eval SUB_ARRAY=(${ARRAY[$i]})
  ARRAY[$i]="<a href=\"${SUB_ARRAY[1]}\">${SUB_ARRAY[0]}</a>"
done

echo "<center><h1>Zachary Pember's Links</h1></center>" > $HTML
echo "<h2>References</h2>" >> $HTML
echo "<ul>" >> $HTML
printf "  <li>%s</li>\n" "${ARRAY[@]}" >> $HTML
echo "</ul>" >> $HTML

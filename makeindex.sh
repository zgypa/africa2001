#!/bin/bash

INDEX="index.html"

echo "<html><head><title>Africa Journal</title></head><body><table>" > $INDEX; 

for file in `ls *html`; 
 do 
  echo "<tr><td>" >> $INDEX ; 
  echo "<a href=\"./$file\">$file</a>" >> $INDEX; 
  echo "</td></tr>" >> $INDEX; 
 done; 
echo "</body></html>" >> $INDEX

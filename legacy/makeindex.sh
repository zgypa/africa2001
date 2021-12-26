#!/bin/bash

INDEX="index.html"

printf "
<html>
  <head>
    <title>Africa Journal</title>
    <link rel=\"STYLESHEET\" type=\"text/css\" href=\"styles.css\">
  </head>
<body>
  <h1>Africa Journal</title>
  <table>\n" >$INDEX

for file in $(ls -1 day*.html | sort); do
    {
        printf "    <tr><td class=\"day_index\">"
        printf "<a href=\"%s\">%s</a>" "$file" "$(basename $file .html)"
        printf "</td></tr>\n"
    } >>$INDEX
done
echo "</body></html>" >>$INDEX

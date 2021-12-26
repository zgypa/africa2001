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

for file in $(find -name "day*.html"); do
    {
        printf "    <tr><td>"
        printf "<a href=\"%s\">%s</a>" "$file" "$(basename $file .html)"
        printf "</td></tr>\n"
    } >>$INDEX
done
echo "</body></html>" >>$INDEX

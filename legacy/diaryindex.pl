#!/usr/bin/perl

require "cgi-lib.pl";

&ReadParse();



print &PrintHeader;
print "<html><head><base target=\"main\"></head><body>\n";
print "<META HTTP-EQUIV=REFRESH CONTENT=\"0;
                URL=/tinton/Africa2001/$in{'day'}\"></body></html>";

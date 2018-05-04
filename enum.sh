#!/bin/bash

TMPFILE=~/Desktop/AppEnumeration.txt

uname -a  >> $TMPFILE
pwd >> $TMPFILE
find /Applications/ -name "*.app"  >> $TMPFILE
find ~/Applications/ -name "*.app"  2> /dev/null >> $TMPFILE
find ~/Library/Application\ Support/Google/Chrome/Default/Extensions/ -name manifest.json -exec grep "\"name\"" \{\} \;  2> /dev/null >> $TMPFILE
find /Users/philip/Library/Application\ Support/Firefox/Profiles/*default/extensions -depth 1  2> /dev/null >> $TMPFILE
find ~/Library/Safari/Extensions/*safariextz  2> /dev/null >> $TMPFILE

echo "FINISHED"
echo "Application enumeration finished. There is a file called AppEnumeration.txt on your desktop now, please mail it to Phil"

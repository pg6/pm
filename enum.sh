#!/bin/bash

TMPFILE=~/Desktop/AppEnumeration.txt

uname -a  >> $TMPFILE
pwd >> $TMPFILE
find /Applications/ -name "*.app"  >> $TMPFILE
find ~/Applications/ -name "*.app" >> $TMPFILE
find ~/Library/Application\ Support/Google/Chrome/Default/Extensions/ -name manifest.json -exec grep "\"name\"" \{\} \; >> $TMPFILE
find /Users/philip/Library/Application\ Support/Firefox/Profiles/*default/extensions -depth 1 >> $TMPFILE
find ~/Library/Safari/Extensions/*safariextz >> $TMPFILE




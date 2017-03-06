#!/bin/bash

BOOK=$2
CHAPTERS=$3

function mkjson {
  for (( i=1; i<=$CHAPTERS; i++ ))
	do
		CHAPTER=$i
		PAGE="matthew_henry_"$BOOK"_"$CHAPTER".json"
		URL="http://www.sacred-texts.com/bib/cmt/mhcc/"$BOOK"00"$CHAPTER".htm"
		download
		removehead
		removetail
		removelines
		removetags
		removedoublequotes
		changeversetag
		addquotes
		paireverytwolines
		addcolon
		addcomma
		addheadbrace
		addtailbrace
  done
}

function download {
	wget -O $PAGE $URL
}

function removehead {
	HEAD=""$BOOK" "$CHAPTER":1"
	sed -i '/'"$HEAD"'/,$!d' $PAGE
}

function removetail {
	TAIL="<p><div class=\"filenav\">"
	sed -i '/'"$TAIL"'/,$d' $PAGE
}

function removelines {
	RMLINE="<p align=\"center\"><A HREF=\"..\/..\/..\/bib\/kjv\/"$BOOK"00"$CHAPTER".htm"
	sed -i '/'"$RMLINE"'.*$/d' $PAGE
}

function removetags {
		sed -i 's/<[^>]*>//g' $PAGE
}

function removedoublequotes {
		sed -i 's/\"//g' $PAGE
}

function changeversetag {
		 sed -i 's/ \([0-9]\):\(-\?[0-9]\)/\_\1\_\2/g' $PAGE
}

function addquotes {
	sed -i "s/\(.*\)/\"\1\"/" $PAGE
}

function paireverytwolines {
	sed -i '$!N;s/\n/ /' $PAGE
}

function addcolon {
		sed -i 's/" "/": "/g' $PAGE
}

function addcomma {
	sed -i '$!s/$/,/' $PAGE
}

function addheadbrace {
		sed -i '1s/^/{\n/' $PAGE
}

function addtailbrace {
		sed -i '$s/$/\n}/' $PAGE
}

for argument in "$@"
do
case $argument in
	makejson)
		mkjson
	;;
	becomeinitialcommit)
		rm -rf .git
		git init
		git add --all
		git commit -m "become initial commit"
		git remote add origin https://github.com/albraga/bible.git
		git push -u --force origin master
	;;
esac
done

#!/bin/bash

BOOK=$2
CHAPTER=$3
PAGE="matthew_henry_"$BOOK"_"$CHAPTER".html"
URL="http://www.sacred-texts.com/bib/cmt/mhcc/"$BOOK"00"$CHAPTER".htm"

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

function changeversetag {
		 sed -i 's/ \([0-9]\):\(-\?[0-9]\)/\_\1\_\2/g' $PAGE
}

for argument in "$@"
do
case $argument in
	process)
		download
		removehead
		removetail
		removelines
		removetags
		changeversetag
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

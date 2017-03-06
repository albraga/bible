#!/bin/bash

BOOK=$2
CHAPTER=$3
PAGE="matthew_henry_"$BOOK"_"$CHAPTER".html"
URL="http://www.sacred-texts.com/bib/cmt/mhcc/"$BOOK"00"$CHAPTER".htm"

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

for argument in "$@"
do
case $argument in
	download)
		wget -O $PAGE $URL
		removehead
		removetail
		removelines
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

#!/bin/bash

BOOK=$2
CHAPTERS=$3

text_eng="all we need is love"
yandex_key="trnsl.1.1.20170122T193632Z.4559465b309f3298.adcb99797c5d62069304ac3780b2774156e65122"
yandex_url="https://translate.yandex.net/api/v1.5/tr.json/translate?lang=en-pt&text=$text_eng&key=$yandex_key"

function batchjson {
  for (( i=1; i<=$CHAPTERS; i++ ))
	do
		CHAPTER=$i
		PAGE="matthew_henry_"$BOOK"_"$CHAPTER".json"
		URL="http://www.sacred-texts.com/bib/cmt/mhcc/"$BOOK"00"$CHAPTER".htm"
		download
  done
}

function translate {
	curl -X POST "$yandex_url" | jq '.text[0]'
}


for argument in "$@"
do
case $argument in
	topt)
		translate
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

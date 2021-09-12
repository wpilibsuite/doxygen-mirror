#!/bin/bash

BASE_URL="https://sourceforge.net/projects/doxygen/rss?path=/"


OUTPATH=`pwd`/$1
mkdir $OUTPATH

# Inspired by https://stackoverflow.com/a/52351243
curl $BASE_URL$1 | grep "<link>.*</link>" | sed 's|<link>||;s|</link>||' | sed 's|/download$||' | sed '1d' | xargs wget -P $OUTPATH

#!/bin/bash

XKCDIR="/home/$USER/.xkcd"

if [ ! -d "$XKCDIR" ]; then
	mkdir -p $XKCDIR
fi

if [ -z "$1" ]; then
	curl -s https://xkcd.com/info.0.json > $XKCDIR/current_xkcd.json
	echo $(jq -r '.title' $XKCDIR/current_xkcd.json) &&  curl -s $(jq -r '.img' $XKCDIR/current_xkcd.json) | kitten icat --transfer-mode=stream && echo $(jq -r '.alt' $XKCDIR/current_xkcd.json)
  else 
	curl -s https://xkcd.com/$1/info.0.json > $XKCDIR/$1.json
	echo $(jq -r '.title' $XKCDIR/$1.json) && curl -s $(jq -r '.img' $XKCDIR/$1.json) | kitten icat --transfer-mode=stream && echo $(jq -r '.alt' $XKCDIR/$1.json)
fi


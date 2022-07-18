#!/bin/bash

python3 /usr/bin/genRSS.py -e "mp3,ogg,aac" -d radio -H https://pod.crabdance.com -t "Cockers" -p "Radio" -r -o feed.rss

python3 /usr/bin/cleanup.py
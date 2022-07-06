#!/bin/bash

while : 
do
  inotifywatch -v -e moved_to -e close_write -r /var/www && {
    python3 /usr/bin/genRSS.py -e "mp3,ogg" -d /var/www -H https://pod.crabdance.com -t "Cockers" -p "Radio" -r -o feed.rss
  }
done
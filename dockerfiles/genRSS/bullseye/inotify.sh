#!/bin/bash

while : 
do
  inotifywatch -e moved_to -e create /var/www && {
    python3 genRSS.py -e "mp3,ogg" -d /var/www -H https://pod.crabdance.com -t "Cockers" -p "Radio" -r -o feed.rss
  }
done
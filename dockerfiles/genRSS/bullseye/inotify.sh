#!/bin/bash

python3 /usr/bin/genRSS.py -e "mp3,ogg,aac,ts" -d did -H https://pod.crabdance.com -t "Desert-Island-Discs" -p "Radio" -r -o did.rss

python3 /usr/bin/genRSS.py -e "mp3,ogg,aac,ts" -d fnc -H https://pod.crabdance.com -t "Friday-Night-Comedy" -p "Radio" -r -o fnc.rss

python3 /usr/bin/genRSS.py -e "mp3,ogg,aac,ts" -d ftw -H https://pod.crabdance.com -t "The-First-Time-With" -p "Radio" -r -o ftw.rss

python3 /usr/bin/genRSS.py -e "mp3,ogg,aac,ts" -d kermode -H https://pod.crabdance.com -t "Kermode" -p "Radio" -r -o kermode.rss

python3 /usr/bin/genRSS.py -e "mp3,ogg,aac,ts" -d roundtable -H https://pod.crabdance.com -t "Roundtable" -p "Radio" -r -o rt.rss

python3 /usr/bin/cleanup.py did
python3 /usr/bin/cleanup.py fnc
python3 /usr/bin/cleanup.py ftw
python3 /usr/bin/cleanup.py kermode
python3 /usr/bin/cleanup.py roundtable
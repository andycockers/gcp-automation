#!/bin/bash

python3 /usr/bin/genRSS.py -e "mp3" -d kermode -H https://pod.crabdance.com -t "Kermode" -p "Radio" -r -o kermode.rss
python3 /usr/bin/genRSS.py -e "mp3,ogg,aac,m4a" -d roundtable -H https://pod.crabdance.com -t "Roundtable" -p "Radio" -r -o rt.rss

python3 /usr/bin/cleanup.py kermode
python3 /usr/bin/cleanup.py roundtable
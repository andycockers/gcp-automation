FROM python:latest
RUN mkdir -p /var/www
WORKDIR /var/www
RUN apt update\
    apt install inotify-tools\
    cd /var/www\
    wget https://raw.githubusercontent.com/amsehili/genRSS/master/genRSS.py
COPY inotify.sh /usr/bin
CMD inotify.sh
FROM python:latest
RUN mkdir -p /var/www
WORKDIR /var/www
RUN apt update &&\
    apt install inotify-tools -y &&\
    wget https://raw.githubusercontent.com/amsehili/genRSS/master/genRSS.py -P /var/www
COPY inotify.sh /usr/bin
CMD inotify.sh
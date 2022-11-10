FROM python:latest
RUN mkdir -p /var/www
WORKDIR /var/www
RUN apt update &&\
    apt install inotify-tools -y &&\
    wget https://raw.githubusercontent.com/amsehili/genRSS/master/genRSS.py -P /usr/bin &&\
    wget https://raw.githubusercontent.com/amsehili/genRSS/master/util.py -P /usr/bin
COPY inotify.sh /usr/bin
COPY cleanup.py /usr/bin
CMD inotify.sh
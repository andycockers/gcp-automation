FROM python:2.7.18-slim-stretch
RUN mkdir -p /var/www
WORKDIR /var/www
COPY basic.py /usr/bin
CMD python /usr/bin/basic.py 7000 pod:$password
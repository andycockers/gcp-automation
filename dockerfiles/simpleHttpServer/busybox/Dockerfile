FROM busybox
ADD python2.7-static /bin/python
WORKDIR /var/www/
EXPOSE 8080
CMD [ "python", "-m", "SimpleHTTPServer", "8080" ]
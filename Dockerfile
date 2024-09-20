FROM ubuntu:latest
LABEL sample website
MAINTAINER shiva
RUN apt-get update && apt-get install -y apache2
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]



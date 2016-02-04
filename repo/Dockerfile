FROM debian:8.3

RUN apt-get update && apt-get install -y apache2 curl

COPY download /tmp
RUN chmod +x /tmp/download

RUN mkdir /var/www/html/xnat
COPY files /var/www/html/xnat

WORKDIR /var/www/html/xnat
RUN /tmp/download

EXPOSE 80

CMD apachectl start \
    && tail -f /var/log/apache2/access.log /var/log/apache2/error.log

# eof

FROM debian:8.3

RUN apt-get update && apt-get install -y apache2 curl

COPY download files /tmp/
RUN chmod +x /tmp/download

RUN rm /var/www/html/index.html

WORKDIR /var/www/html
RUN /tmp/download

EXPOSE 80

CMD apachectl start \
    && tail -f /var/log/apache2/access.log /var/log/apache2/error.log

# eof

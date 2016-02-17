FROM debian:8.3

RUN apt-get update && apt-get install -y apache2

RUN rm /var/www/html/index.html
COPY xnat/* /var/www/html/

EXPOSE 80

CMD apachectl start \
    && tail -f /var/log/apache2/access.log /var/log/apache2/error.log

# eof

FROM debian

RUN apt update && apt -y install apache2

# Change Apache port
RUN sed -i 's/Listen 80/Listen 82/g' /etc/apache2/ports.conf
RUN sed -i 's/<VirtualHost \*:80>/<VirtualHost \*:82>/g' /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www/html
COPY . ./

EXPOSE 82
CMD apachectl -D FOREGROUND

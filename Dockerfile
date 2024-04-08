FROM php:7.0-apache
WORKDIR /docker-php-helloworld
COPY src/ /var/www/html
EXPOSE 80

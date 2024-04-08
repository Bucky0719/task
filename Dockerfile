FROM php:7.0-apache
WORKDIR /task
COPY src/ /var/www/html
EXPOSE 80

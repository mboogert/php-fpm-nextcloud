FROM php:7.3-fpm

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
        zlib1g-dev \
        libpng-dev \
        libzip-dev \
        libmagickwand-dev

RUN docker-php-ext-install pdo pdo_mysql zip gd intl

RUN pecl install imagick && \
    docker-php-ext-enable imagick

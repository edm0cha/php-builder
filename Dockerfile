FROM php:7.4-fpm-alpine
MAINTAINER Edwin Moedano "edwinmoedano@gmail.com"

RUN apk update && apk add \
    curl \
    jq \
    bash \
    icu \
    icu-dev \
    libintl \
    git \
    openssh-client
RUN docker-php-ext-install \
    intl \
    bcmath \
    exif
RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer

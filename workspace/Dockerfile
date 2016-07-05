FROM phusion/baseimage

MAINTAINER Stephan <lishufan00@aliyun.com>

ADD ./sources.list /etc/apt/sources.list
ADD ./composer.phar /usr/local/bin/composer
RUN chmod 755 /usr/local/bin/composer

RUN apt-get update && apt-get install -y \
    git \
    wget \
    vim \
    nano \ 
    curl \
    php5 \
    php5-fpm \
    php5-cli \
    php5-mysql \
    php5-mcrypt \
    php5-curl \
    php5-gd \
    php5-intl \
    mysql-client \
    --no-install-recommends \
    && rm -r /var/lib/apt/lists/*

ENV MYSQL_DATABASE=db1 MYSQL_ROOT_PASSWORD=db1

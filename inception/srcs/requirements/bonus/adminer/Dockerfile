FROM debian:stable-slim
RUN apt-get update; apt-get upgrade -y ;\
apt-get install \
php7.4-cgi \
php7.4-common \
php7.4-fpm \
php7.4-mbstring \
php7.4-zip \
php7.4-cli \
php7.4-json \
php7.4-gd \
php7.4-mysql \
php7.4-xml \
php7.4-curl \
php7.4-bcmath \
curl unzip tar wget -y
RUN service php7.4-fpm start
RUN wget https://www.adminer.org/latest-en.php -O /usr/local/bin/adminer.php
CMD php -S 0.0.0.0:8888 /usr/local/bin/adminer.php 

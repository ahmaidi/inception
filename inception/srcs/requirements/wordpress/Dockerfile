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
RUN echo "listen = 9000" >> /etc/php/7.4/fpm/pool.d/www.conf
RUN mkdir -p /var/www/html/
WORKDIR /var/www/html/
COPY ./tools/setup.sh .
RUN sh setup.sh
COPY ./conf/wp-config.php ./wordpress/
WORKDIR /home
COPY ./tools/start.sh .

CMD [ "bash", "+x", "start.sh" ]

#!/bin/sh

if [ -d /var/www/html/wordpress ]; then
    echo "dejà exist"
else
    wget http://wordpress.org/latest.tar.gz
    tar xfs latest.tar.gz
    rm -f latest.tar.gz
    rm -rf wordpress/wp-config-sample.php
    chown -R www-data:www-data /var/www/html/wordpress
    # redis 
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp

fi


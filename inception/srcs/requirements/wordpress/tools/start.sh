#!/bin/sh
apt install vim -y
wp plugin install redis-cache --path="/var/www/html/wordpress/" --activate --allow-root
wp redis enable  --path="/var/www/html/wordpress/" --activate --allow-root

php-fpm7.4 -F -R
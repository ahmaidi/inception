#!/bin/sh

if [ ! -d /var/lib/mysql/wordpress ]; then
service mariadb start
    mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
    mysql -u root -e "CREATE DATABASE $DB_NAME;"
    mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%';"
    mysql -u root $DB_NAME < wp.sql
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
    mysql -u root -e "FLUSH PRIVILEGS;"
service mariadb stop
else
    echo "Dejà exist"
fi
mysqld_safe

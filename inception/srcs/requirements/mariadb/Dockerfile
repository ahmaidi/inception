FROM debian:stable-slim

RUN apt-get update; apt-get upgrade -y
RUN apt-get install mariadb-server -y
RUN sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/setup.sh .
COPY ./conf/wp.sql .
CMD sh setup.sh
FROM debian:stable-slim

RUN apt-get update; apt-get upgrade -y; apt-get install -y redis;
COPY ./conf/redis.conf /etc/redis/redis.conf
EXPOSE 6379

CMD redis-server --protected-mode no
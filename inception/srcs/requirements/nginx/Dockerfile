FROM debian:stable-slim

RUN apt-get update; apt-get upgrade -y; apt-get install -y nginx openssl; rm -rf /var/lib/apt/lists/*

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=CA/O=1337, Inc./CN=ahmaidi.42.fr"

COPY /conf/default /etc/nginx/sites-available

CMD ["nginx", "-g","daemon off;"]

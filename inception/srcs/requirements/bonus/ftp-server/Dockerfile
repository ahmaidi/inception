FROM debian:stable-slim

RUN apt update; apt install vsftpd -y
RUN service vsftpd start
COPY /tools/start.sh .

ENTRYPOINT [ "sh", "start.sh" ]
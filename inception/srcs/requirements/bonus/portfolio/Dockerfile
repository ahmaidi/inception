FROM debian:stable-slim
RUN apt update; apt install nodejs -y

RUN mkdir -p /portfolio
WORKDIR /portfolio
COPY ./conf/app.js .
COPY ./conf/index.html .

CMD [ "nodejs", "app.js" ]
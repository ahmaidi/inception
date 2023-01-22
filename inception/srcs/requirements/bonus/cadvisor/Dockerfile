FROM debian:stable-slim

RUN apt update; apt install wget -y
RUN wget https://github.com/google/cadvisor/releases/download/v0.38.3/cadvisor
RUN chmod +x cadvisor
CMD [ "./cadvisor" ]


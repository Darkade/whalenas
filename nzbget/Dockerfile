FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl wget nzbget

RUN mkdir /config

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]

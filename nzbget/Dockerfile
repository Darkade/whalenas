FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl wget nzbget

RUN mkdir /config

ADD start.sh /start.sh
ADD nzbget.conf /config/nzbget.conf

RUN chmod +x /start.sh

CMD ["/start.sh"]

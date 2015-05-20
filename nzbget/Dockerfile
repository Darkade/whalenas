FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add wget

RUN apk add libxml2-dev ncurses-dev openssl-dev


###SHOULD BE OVERWRITTEN IN docker-compose.yml

ENV NZBGET_URL http://nzbget.net/download/nzbget-testing-latest-bin-linux.run
VOLUME ["/config"]


###INSTALLING NZBGET
RUN mkdir /opt

RUN cd /opt && wget $NZBGET_URL
RUN cd /opt && sh nzbget-testing-latest-bin-linux.run > /dev/null

ADD start.sh /bin/start.sh
ADD nzbget.conf /config/nzbget.conf
RUN chmod +x /bin/start.sh


CMD ["sh", "/bin/start.sh"]

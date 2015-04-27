FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add wget g++
RUN apk add libxml2


###SHOULD BE OVERWRITTEN IN docker-compose.yml
ENV NZBGET_VER 14.2
ENV NZBGET_URL "http://downloads.sourceforge.net/project/nzbget/nzbget-stable/${NZBGET_VER}/nzbget-${NZBGET_VER}.tar.gz"
VOLUME ["/config"]


###INSTALLING NZBGET
RUN mkdir /opt
WORKDIR /opt


RUN wget "http://sourceforge.net/projects/nzbget/files/nzbget-stable/${NZBGET_VER}/nzbget-${NZBGET_VER}.tar.gz"
RUN tar -zxf nzbget-${NZBGET_VER}.tar.gz
RUN cd "nzbget-${NZBGET_VER}" && ./configure && make && make install

ADD start.sh /start.sh
ADD nzbget.conf /config/nzbget.conf
RUN chmod +x /start.sh


CMD ["/start.sh"]

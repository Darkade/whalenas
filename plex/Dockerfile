FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl wget

ENV PLEX_VERSION 0.9.11.16.958-80f1748
ENV PLEX_URL https://downloads.plex.tv/plex-media-server/${PLEX_VERSION}/plexmediaserver_${PLEX_VERSION}_amd64.deb

RUN wget $PLEX_URL -O /tmp/plexmediaserver_${PLEX_VERSION}_amd64.deb
RUN dpkg -i /tmp/plexmediaserver_${PLEX_VERSION}_amd64.deb

ADD plexmediaserver.conf /etc/default/plexmediaserver

RUN usermod -u 999 plex
RUN usermod -g 100 plex

RUN mkdir /config
RUN chown plex /config

CMD ["/usr/sbin/start_pms"]

FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl wget

RUN cd /opt && wget http://download-cdn.getsyncapp.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz
RUN cd /opt && tar zxf BitTorrent-Sync_x64.tar.gz

CMD ["/opt/btsync", "--nodaemon", "--webui.listen", "0.0.0.0:8888"]

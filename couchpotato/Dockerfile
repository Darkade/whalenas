FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y python git-core

RUN cd /opt && \
  git clone https://github.com/RuudBurger/CouchPotatoServer.git

WORKDIR /opt
ENTRYPOINT ["python", "CouchPotatoServer/CouchPotato.py"]

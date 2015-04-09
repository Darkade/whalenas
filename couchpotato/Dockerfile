FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add python git

RUN mkdir /opt
WORKDIR /opt
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git

ENTRYPOINT ["python", "CouchPotatoServer/CouchPotato.py"]

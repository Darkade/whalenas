FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add python git

RUN mkdir /opt
WORKDIR /opt
RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git
WORKDIR /opt/CouchPotatoServer

CMD ["python", "CouchPotato.py", "--console_log"]

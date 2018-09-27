FROM debian:stretch
LABEL maintainer="Abcoin Developers <dev@abcoin.org>"
LABEL description="Dockerised AbcoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/

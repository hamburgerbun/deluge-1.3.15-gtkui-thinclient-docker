FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y deluge-gtk locales fonts-noto && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN locale-gen en_US.UTF-8

CMD deluge-gtk

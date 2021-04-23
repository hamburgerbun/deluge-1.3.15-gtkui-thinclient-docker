FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y deluge-gtk locales fonts-noto fonts-arphic-ukai fonts-arphic-uming fonts-ipafont-mincho fonts-ipafont-gothic fonts-unfonts-core language-pack-ja && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN locale-gen en_US.UTF-8

CMD deluge-gtk

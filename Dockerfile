FROM debian:stretch

MAINTAINER Michael Kropat <mail@michael.kropat.name>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    curl \
    git \
    openssl \
    vim-common

COPY hashurls newsigningkey updatepages /usr/local/bin/

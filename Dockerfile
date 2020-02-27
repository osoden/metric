FROM ubuntu:latest
MAINTAINER Denys Osokin osoden.m@gmail.com

RUN apt update \
    && apt -y install \
    software-properties-common \
    python3 \
    python3-pip \
    python3-virtualenv

RUN pip3 install psutil

COPY metric /

ENTRYPOINT /bin/bash

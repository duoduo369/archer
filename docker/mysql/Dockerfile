FROM ubuntu:18.04
MAINTAINER duoduo3369 "duoduod3369@gmail.com"

ENV REFRESHED_AT 2020-08-20
RUN cp /etc/apt/sources.list /etc/apt/sources.list.back && \
  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
  apt-get clean && apt-get update

RUN apt-get install -y software-properties-common && \
  add-apt-repository ppa:deadsnakes/ppa && \
  apt-get update

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -yq build-essential vim mysql-server-5.7

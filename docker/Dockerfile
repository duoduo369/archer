FROM ubuntu:18.04
MAINTAINER duoduo3369 "duoduod3369@gmail.com"

ENV REFRESHED_AT 2020-06-22
RUN cp /etc/apt/sources.list /etc/apt/sources.list.back && \
  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
  apt-get clean && apt-get update

RUN apt-get install -y software-properties-common && \
  add-apt-repository ppa:deadsnakes/ppa && \
  apt-get update

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y build-essential git libpq-dev tig vim zip wget openjdk-8-jdk python3.7 python3.7-dev python3.7-venv python3-pip postgresql && \
  update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1 && \
  update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1

ENV PYTHONUNBUFFERED 1
RUN mkdir -p /opt/projects/python_env && python3 -m venv /opt/projects/python_env/archer
WORKDIR /opt/projects
COPY archer /opt/projects/
RUN source /opt/projects/python_env/archer/bin/activate && pip install /opt/projects/archer/requirements/requirements.txt

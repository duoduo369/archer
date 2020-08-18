FROM python:3.7
MAINTAINER duoduo3369 "duoduod3369@gmail.com"

ARG DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED 1
WORKDIR /opt/projects/archer
EXPOSE 8765

COPY requirements/requirements.txt /opt/projects/archer/requirements/requirements.txt
ENV REFRESHED_AT 2020-08-18_18:10
RUN pip install -r requirements/requirements.txt \
    -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

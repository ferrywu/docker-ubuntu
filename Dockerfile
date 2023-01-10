FROM ubuntu:latest
MAINTAINER ferrywu

RUN apt update
RUN apt install -y rar p7zip-full


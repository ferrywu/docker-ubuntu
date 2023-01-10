FROM ubuntu:latest
MAINTAINER ferrywu

RUN apt update
RUN apt install -y rar p7zip-full
RUN apt install -y samba smbclient net-tools

# build linux kernel requirements
RUN apt install -y build-essential flex bison dwarves libssl-dev libelf-dev bc libncurses-dev
RUN apt install -y linux-headers-generic


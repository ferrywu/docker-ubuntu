FROM ubuntu:20.04
MAINTAINER ferrywu

RUN apt update
RUN apt install -y rar p7zip-full
RUN apt install -y samba smbclient net-tools

# build linux kernel requirements
RUN apt install -y build-essential flex bison dwarves libssl-dev libelf-dev bc libncurses-dev
RUN apt install -y linux-headers-generic

# python3 is required for building WSL kernel
RUN apt install -y python3 python-is-python3

# build OpenWrt
RUN apt install -y build-essential libncurses5-dev libncursesw5-dev zlib1g-dev gawk git gettext libssl-dev xsltproc rsync wget unzip python3 python-is-python3
# for generate .vdi file
RUN apt install -y qemu-utils


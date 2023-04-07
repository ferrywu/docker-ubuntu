FROM ubuntu:latest

RUN apt update && \
    #
    # general tools
    #
    apt install -y vim tree psmisc && \
    apt install -y cpio rar p7zip-full && \
    apt install -y samba smbclient net-tools iputils-ping iproute2 hostname nfs-common curl && \
    apt install -y python2-minimal python3 python-is-python3 && \
    #
    # build linux kernel requirements
    #
    apt install -y build-essential flex bison dwarves libssl-dev libelf-dev bc libncurses-dev && \
    apt install -y linux-headers-generic && \
    #
    # build OpenWrt
    #
    apt install -y build-essential libncurses5-dev libncursesw5-dev zlib1g-dev gawk git \
                   gettext libssl-dev xsltproc rsync wget unzip python3 python-is-python3 && \
    # for generate .vdi file
    apt install -y qemu-utils && \
    # Ubuntu 22.04 requires installing file package for building OpenWrt
    apt install -y file && \
    #
    # clean up the apt cache
    #
    rm -rf /var/lib/apt/lists/*

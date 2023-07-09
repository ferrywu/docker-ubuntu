FROM ubuntu:latest

RUN apt update && \
    #
    # Set DEBIAN_FRONTEND to prevent asking the geographic area when installing docker
    #
    export DEBIAN_FRONTEND=noninteractive && \
    #
    # general tools
    #
    apt install -y vim tree psmisc sudo tmux && \
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
    # build Yocto
    #
    apt install -y gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio \
                   python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git \
                   python3-jinja2 libegl1-mesa libsdl1.2-dev python3-subunit mesa-common-dev \
                   zstd liblz4-tool file locales && \
    locale-gen en_US.UTF-8 && \
    #
    # clean up temporary environment variables
    #
    unset DEBIAN_FRONTEND && \
    #
    # clean up the apt cache
    #
    rm -rf /var/lib/apt/lists/*

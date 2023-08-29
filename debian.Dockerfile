FROM debian:stretch

RUN sed -i -e 's/deb.debian.org/archive.debian.org/g' \
           -e 's|security.debian.org|archive.debian.org/|g' \
           -e '/stretch-updates/d' /etc/apt/sources.list

RUN apt-get update && apt-get -y -f install \
    bash \
    curl wget \
    pkg-config build-essential make automake autogen libtool cmake \
    libpcre2-dev libpcre3-dev bison yodl \
    tar xz-utils bzip2 gzip unzip \
    file \
    rsync \
    sed \
    upx

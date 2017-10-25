#!/usr/bin/env bash

#
# https://jasonmun.blogspot.my
# https://github.com/yomun
# 
# Copyright (C) 2017 Jason Mun
# 

# curl -I https://nghttp2.org/
# curl --http2 -I https://nghttp2.org/
# curl --version

sudo apt install git g++ make binutils autoconf automake autotools-dev libtool pkg-config -y
sudo apt install zlib1g-dev libcunit1-dev libssl-dev libxml2-dev libev-dev libevent-dev libjansson-dev -y
sudo apt install libjemalloc-dev cython python3-dev python-setuptools -y

git clone https://github.com/tatsuhiro-t/nghttp2.git
cd nghttp2
autoreconf -i
automake
autoconf
./configure
make
sudo make install

# cd ~
# sudo apt build-dep curl

wget https://curl.haxx.se/download/curl-7.56.0.tar.bz2
tar -xvjf curl-7.56.0.tar.bz2
cd curl-7.56.0
./configure --with-nghttp2=/usr/local --with-ssl
sudo make
sudo make install

su root
echo '/usr/local/lib' > /etc/ld.so.conf.d/local.conf
ldconfig

curl --version | grep http

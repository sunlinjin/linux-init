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

# https://curl.haxx.se/download/
CURL_VER="curl-7.56.1"

sudo apt install git g++ make binutils autoconf automake autotools-dev libtool pkg-config -y
sudo apt install zlib1g-dev libcunit1-dev libssl-dev libxml2-dev libev-dev libevent-dev libjansson-dev -y
sudo apt install libjemalloc-dev cython python3-dev python-setuptools -y

cd ~/Downloads

git clone https://github.com/tatsuhiro-t/nghttp2.git
cd nghttp2
autoreconf -i
automake
autoconf
./configure
make
sudo make install

cd ~/Downloads

# sudo apt build-dep curl

wget https://curl.haxx.se/download/${CURL_VER}.tar.bz2
if [ -f "${CURL_VER}.tar.bz2" ]
then
	tar -xvjf ${CURL_VER}.tar.bz2
	cd ${CURL_VER}
	./configure --with-nghttp2=/usr/local --with-ssl
	sudo make
	sudo make install
fi

cd ~

su

if [ -f "/etc/ld.so.conf.d/local.conf" ]
then
	CONTENT=`cat /etc/ld.so.conf.d/local.conf | grep -c /usr/local/lib`
	if [ ${CONTENT} -eq 1 ]
	then
		echo '/usr/local/lib' > /etc/ld.so.conf.d/local.conf
		ldconfig
	fi
fi

curl -I https://nghttp2.org/

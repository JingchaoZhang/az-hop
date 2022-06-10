#!/bin/bash

sudo apt-get update
sudo apt-get install -y libevent-dev git flex autoconf

mkdir -p /opt/pmix/v3
cd /mnt
mkdir -p pmix
cd pmix
git clone https://github.com/openpmix/openpmix.git openpmix
cd openpmix
git checkout v3.1
./autogen.sh
./configure --prefix=/opt/pmix/v3
make -j
sudo make install
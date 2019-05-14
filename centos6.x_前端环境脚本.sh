#!/bin/bash
mkdir /Data
mkdir /Data/apps
yum -y install gcc automake autoconf libtool make
yum install -y gcc gcc-c++
yum install -y xz
cd /Data/apps
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.39.tar.gz
tar -zxvf pcre-8.39.tar.gz
cd pcre-8.39
./configure
make
make install
cd /Data/apps
wget http://zlib.net/zlib-1.2.11.tar.gz
tar -zxvf zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure
make
make install
cd /Data/apps
wget http://www.openssl.org/source/openssl-1.0.1t.tar.gz
tar -zxvf openssl-1.0.1t.tar.gz
cd /Data/apps
wget http://nginx.org/download/nginx-1.1.10.tar.gz
tar -zxvf nginx-1.1.10.tar.gz
cd nginx-1.1.10
./configure
make
make install
cd /Data/apps
curl -O http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.0.6.tgz
tar -zxvf mongodb-linux-x86_64-3.0.6.tgz
mv /Data/apps/mongodb-linux-x86_64-3.0.6 /Data/apps/mongo
mkdir -p /data/db
cd /Data/apps
wget http://nodejs.org/dist/v11.10.0/node-v11.10.0-linux-x64.tar.xz
tar xvJf node-v11.10.0-linux-x64.tar.xz
mv /Data/apps/node-v11.10.0-linux-x64 /Data/apps/node
ln -sv /Data/apps/node/bin/node /usr/sbin/node
ln -sv /Data/apps/node/bin/npm /usr/sbin/npm

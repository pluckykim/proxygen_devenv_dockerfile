#!/bin/bash

yum install -y epel-release
yum update -y

yum install -y \
git \
cmake \
g++ \
flex \
bison \
libkrb5-devel \
libsasl2-devel \
libnuma-devel \
pkg-config \
libssl-devel \
libcap-devel \
gperf \
autoconf-archive \
libevent-dev \
libtool \
libboost-all-devel \
libjemalloc-devel \
libsnappy-devel \
wget \
vim \
unzip \
glog-devel gflags-devel \
openssl-devel \
boost-* \
libevent-devel

yum install -y net-tools wget centos-release-scl make git which libtool file
yum install -y devtoolset-4-gcc devtoolset-4-gcc-c++ devtoolset-4-gdb

echo "alias cmake='/usr/local/bin/cmake'" >> /etc/bashrc
echo "source /opt/rh/devtoolset-4/enable" >> /etc/bashrc
echo "export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH:/usr/lib64" >> /etc/bashrc

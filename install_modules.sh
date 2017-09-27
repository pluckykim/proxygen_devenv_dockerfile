#!/bin/bash

alias cmake='/usr/local/bin/cmake'
source /opt/rh/devtoolset-4/enable
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH:/usr/lib64

cd /basic_installation
git clone https://github.com/floitsch/double-conversion.git double-conversion
cd double-conversion
git fetch
git checkout master
cmake . -DBUILD_SHARED_LIBS=ON
make install

cd /basic_installation
git clone https://github.com/facebook/folly
cd folly/folly
git fetch
git checkout master
autoreconf --install
./configure
make -j8 && make install

cd /basic_installation
git clone https://github.com/facebook/wangle
cd wangle/wangle
git fetch
git checkout master
cmake .
make -j8 && make install

cd /basic_installation
git clone https://github.com/facebook/proxygen
cd proxygen/proxygen
autoreconf -ivf
./configure
make -j8 && make install

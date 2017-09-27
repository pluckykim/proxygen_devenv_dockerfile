#!/bin/bash

source /opt/rh/devtoolset-4/enable
mkdir /basic_installation
cd /basic_installation
wget https://cmake.org/files/v3.8/cmake-3.8.0.tar.gz
tar -xzf cmake-3.8.0.tar.gz
cd cmake-3.8.0
./bootstrap
make
make install
cmake --version

#!/bin/bash -x

git clone https://github.com/facebook/watchman
cd watchman
git checkout v3.7.0
./autogen.sh
./configure
make install
watchman -v

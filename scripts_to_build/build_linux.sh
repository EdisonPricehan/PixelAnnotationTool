#!/bin/bash

sudo apt-get install mesa-common-dev
sudo apt-get install libopencv-dev python-opencv
sudo apt-get install qt5-default

if [ -d "build" ]; then
	rm -r build
fi
mkdir build
cd build
cmake -G "Unix Makefiles" ../..
make
cd ..


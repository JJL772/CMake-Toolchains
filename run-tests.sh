#!/bin/bash

mkdir build 
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/avr-toolchain.cmake -DAVR_TEST=1 -DMCU=atmega644pa
make
cd .. && rm -rf build

mkdir build
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/i386-linux-toolchain.cmake -DI386_LINUX_TEST=1 
make
cd .. && rm -rf build 

mkdir build
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/i386-toolchain.cmake -DI386_GENERIC_TEST=1 
make
cd .. && rm -rf build 

mkdir build
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/i686-mingw-toolchain.cmake -DI686_MINGW_TEST=1 
make
cd .. && rm -rf build 

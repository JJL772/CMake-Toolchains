#!/bin/bash

echo -e "\n====================\nAVR GENERIC Cross Compile\n====================\n"
mkdir build 
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/avr-toolchain.cmake -DAVR_TEST=1 -DMCU=atmega644pa -Wno-dev
make
cd .. && rm -rf build

echo -e "\n====================\ni386 LINUX Cross Compile\n====================\n"
mkdir build
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/i386-linux-toolchain.cmake -DI386_LINUX_TEST=1 -Wno-dev
make
cd .. && rm -rf build 

echo -e "\n====================\ni386 GENERIC Cross Compile\n====================\n"
mkdir build
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/i386-toolchain.cmake -DI386_GENERIC_TEST=1 -Wno-dev
make
cd .. && rm -rf build 

echo -e "\n====================\ni686 MINGW Cross Compile\n====================\n"
mkdir build
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/i686-mingw-toolchain.cmake -DI686_MINGW_TEST=1 -Wno-dev
make
cd .. && rm -rf build 

echo -e "\n====================\nZILOG Z80 Cross Compile\n====================\n"
mkdir build
cd build && cmake ../ -DCMAKE_TOOLCHAIN_FILE=cmake_scripts/toolchains/z80-toolchain.cmake -DZ80_TEST=1 -Wno-dev -DRAM_START=32768 -DRAM_SIZE=32767 -DCODE_START=1 -DCODE_SIZE=32767 -DDATA_START=35000
make
cd .. && rm -rf build 

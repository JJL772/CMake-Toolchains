#
# Test for avr toolchain
# 
# Jeremy Lorelli, Oct. 2019
#
set(CMAKE_TOOLCHAIN_FILE ${TOOLCHAINS}/avr-toolchain.cmake)
project(avr_test C CXX ASM)

set(SRCS test.c test.cc test.S)

add_executable(avr_test ${SRCS})
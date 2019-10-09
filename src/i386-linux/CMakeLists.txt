#
# i386-linux toolchain test
#
# Jeremy Lorelli, Oct. 2019
#
project(test_i386_linux C CXX ASM)

set(SRCS	test.c
			test.cc
			test.S)

add_executable(test_i386_linux ${SRCS})
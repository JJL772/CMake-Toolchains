#
# i386-linux toolchain test
#
# Jeremy Lorelli, Oct. 2019
#
project(test_i686_mingw C CXX ASM)

set(SRCS	test.c
			test.cc)

add_executable(test_i686_mingw ${SRCS})
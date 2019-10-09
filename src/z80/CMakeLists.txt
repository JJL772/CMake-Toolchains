#
# Test for Z80 toolchain
# 
# Jeremy Lorelli, Oct. 2019
#
project(z80_test C)


set(SRCS test.c)

add_executable(z80_test ${SRCS})
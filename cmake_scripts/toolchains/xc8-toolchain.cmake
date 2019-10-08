#
# Toolchain for PIC Micros using Microchip's XC8 compiler
#
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_SYSTEM_NAME "none")
set(CMAKE_SYSTEM_PROCESSOR "pic")
set(CMAKE_EXECUTALE_FORMAT "ELF")

set(CMAKE_C_COMPILER 	"xc8")
set(CMAKE_CXX_COMPILER 	"") # PIC does not have a compiler for C++
set(CMAKE_LINKER 		"avr-ld")
set(CMAKE_STRIP 		"avr-strip")
set(CMAKE_OBJDUMP 		"avr-objdump")
set(CMAKE_OBJCOPY 		"avr-objcopy")
set(CMAKE_NM 			"avr-nm")
set(CMAKE_RANLIB 		"avr-ranlib")
set(CMAKE_AR 			"xc8-ar")

set(CMAKE_C_FLAGS		"${CMAKE_C_FLAGS} -D_AVR_ -std=c99")
set(CMAKE_CXX_FLAGS		"${CMAKE_CXX_FLAGS} -D_AVR_ -std=c++17")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS}")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS}")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS}")
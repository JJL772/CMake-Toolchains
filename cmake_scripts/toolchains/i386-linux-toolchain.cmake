#
# Toolchain file for i386 targets
#
set(CMAKE_CROSSCOMPILING ON)

set(CMAKE_SYSTEM_NAME "Linux")
set(CMAKE_SYSTEM_PROCESSOR "i386")
set(CMAKE_EXECUTALE_FORMAT "ELF")

# Using GNU assembler for now
set(CMAKE_ASM_COMPILER	"clang")
set(CMAKE_C_COMPILER 	"clang")
set(CMAKE_CXX_COMPILER 	"clang++")
set(CMAKE_LINKER 		"llvm-link")
set(CMAKE_STRIP 		"llvm-strip")
set(CMAKE_OBJDUMP 		"llvm-objdump")
set(CMAKE_OBJCOPY 		"llvm-objcopy")
set(CMAKE_NM 			"llvm-nm")
set(CMAKE_RANLIB 		"llvm-ranlib")
set(CMAKE_AR 			"llvm-ar")

set(CMAKE_AS_FLAGS 				"${CMAKE_AS_FLAGS} -mcpu=i386 --32" CACHE STRING "AS Flags")
set(CMAKE_C_FLAGS				"${CMAKE_C_FLAGS} -target i386-pc-linux-gnu -D_x86_ -D_i386_ -m32 -std=c99" CACHE STRING "C Flags")
set(CMAKE_CXX_FLAGS				"${CMAKE_CXX_FLAGS} -target i386-pc-linux-gnu -D_x86_ -D_i386_ -m32 -std=c++17" CACHE STRING "C++ Flags")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -target i386-pc-linux-gnu" CACHE INTERNAL "EXE Linker Flags")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -target i386-pc-linux-gnu" CACHE INTERNAL "Shared Linker Flags")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -target i386-pc-linux-gnu" CACHE INTERNAL "Module Linker Flags")

if(DEFINED LINKER_SCRIPT)
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT}" CACHE INTERNAL "EXE Linker Flags")
	set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -T ${LINKER_SCRIPT}" CACHE INTERNAL "Shared Linker Flags")
	set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} -T ${LINKER_SCRIPT}" CACHE INTERNAL "Module Linker Flags")
endif(DEFINED LINKER_SCRIPT)
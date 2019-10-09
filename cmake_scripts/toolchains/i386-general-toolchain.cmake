#
# i386 toolchain for a random 386 environment
#
# Jeremy Lorelli, Oct. 2019
#
set(CMAKE_CROSSCOMPILING ON)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR "i386")
set(CMAKE_EXECUTALE_FORMAT "ELF")

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

set(CMAKE_ASM_FLAGS 			"${CMAKE_ASM_FLAGS} -m32")
set(CMAKE_C_FLAGS		"${CMAKE_C_FLAGS} -D_x86_ -D_i386_ -target i386-pc-none-gnu -std=c99" CACHE "C Flags")
set(CMAKE_CXX_FLAGS		"${CMAKE_CXX_FLAGS} -D_x86_ -D_i386_ -target i386-pc-none-gnu -std=c++17" CACHE "C++ Flags")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -target i386-pc-none-gnu" CACHE INTERNAL "EXE Linker Flags")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -target i386-pc-none-gnu" CACHE INTERNAL "Shared Linker Flags")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -target i386-pc-none-gnu" CACHE INTERNAL "Module Linker Flags")

if(DEFINED LINKER_SCRIPT)
	set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT}" CACHE INTERNAL "EXE Linker Flags")
	set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -T ${LINKER_SCRIPT}" CACHE INTERNAL "Shared Linker Flags")
	set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} -T ${LINKER_SCRIPT}" CACHE INTERNAL "Module Linker Flags")
endif(DEFINED LINKER_SCRIPT)
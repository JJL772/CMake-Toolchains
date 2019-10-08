#
# Toolchain file for i686 targets
#
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_SYSTEM_NAME "Linux")	
set(CMAKE_SYSTEM_PROCESSOR "i686")
set(CMAKE_EXECUTALE_FORMAT "ELF")

set(CMAKE_C_COMPILER 	"clang")
set(CMAKE_CXX_COMPILER 	"clang++")
set(CMAKE_LINKER 		"llvm-link")
set(CMAKE_STRIP 		"llvm-strip")
set(CMAKE_OBJDUMP 		"llvm-objdump")
set(CMAKE_OBJCOPY 		"llvm-objcopy")
set(CMAKE_NM 			"llvm-nm")
set(CMAKE_RANLIB 		"llvm-ranlib")
set(CMAKE_AR 			"llvm-ar")

set(CMAKE_C_FLAGS		"${CMAKE_C_FLAGS} -D_x86_ -D_i386_ -D_i686_ -m32 -std=c99")
set(CMAKE_CXX_FLAGS		"${CMAKE_CXX_FLAGS} -D_x86_ -D_i386_ -D_i686_ -m32 -std=c++17")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -m32")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -m32")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -m32")

set(CMAKE_C_FLAGS		"${CMAKE_C_FLAGS} -target i686-pc-linux-gnu")
set(CMAKE_CXX_FLAGS		"${CMAKE_CXX_FLAGS} -target i686-pc-linux-gnu")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -target i686-pc-linux-gnu")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -target i686-pc-linux-gnu")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -target i686-pc-linux-gnu")
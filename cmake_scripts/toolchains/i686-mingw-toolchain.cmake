#
# Toolchain for cross compiling for Windows from Linux
#
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_SYSTEM_NAME "Windows")
set(CMAKE_SYSTEM_PROCESSOR "i686")
set(CMAKE_EXECUTALE_FORMAT "ELF")

set(MINGW_ROOT	"/usr/i686-w64-mingw/")

set(CMAKE_FIND_ROOT_PATH "/usr/i686-w64-mingw/")
set(CMAKE_C_COMPILER 	"i686-w64-mingw32-gcc")
set(CMAKE_CXX_COMPILER 	"i686-w64-mingw32-g++")
set(CMAKE_AS_COMPILER	"i686-w64-mingw32-gcc")
set(CMAKE_LINKER 		"i686-w64-mingw32-ld")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(INCDIRS	"-I${MINGW_ROOT}/include")
set(CMAKE_AS_FLAGS 		"${CMAKE_AS_FLAGS} -m32")
set(CMAKE_C_FLAGS		"${CMAKE_C_FLAGS} ${INCDIRS} -D_x86_ -DWIN32 -DWINDOWS -D_i386_ -D_i686_ -m32 -std=c99")
set(CMAKE_CXX_FLAGS		"${CMAKE_CXX_FLAGS} ${INCDIRS} -D_x86_ -DWIN32 -DWINDOWS -D_i386_ -D_i686_ -m32 -std=c++17")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -m32")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -m32")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -m32")
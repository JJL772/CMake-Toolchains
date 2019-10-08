include("i386-toolchain.cmake")

set(CMAKE_C_FLAGS		"${CMAKE_C_FLAGS} -target i386-pc-none-gnu")
set(CMAKE_CXX_FLAGS		"${CMAKE_CXX_FLAGS} -target i386-pc-none-gnu")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -target i386-pc-none-gnu")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -target i386-pc-none-gnu")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -target i386-pc-none-gnu")
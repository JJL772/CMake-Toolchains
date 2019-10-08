#
# Toolchain file for AVR Micro targets
#
set(CMAKE_CROSSCOMPILING ON)
set(CMAKE_SYSTEM_PROCESSOR avr)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_EXECUTABLE_FORMAT "ELF")

# Force skip compiler checks
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)

set(CMAKE_ASM_COMPILER	"avr-as")
set(CMAKE_C_COMPILER 	"avr-gcc")
set(CMAKE_CXX_COMPILER 	"avr-g++")
set(CMAKE_LINKER 		"avr-gcc") # Keep using avr-gcc for linking
set(CMAKE_STRIP 		"avr-strip")
set(CMAKE_OBJDUMP 		"avr-objdump")
set(CMAKE_OBJCOPY 		"avr-objcopy")
set(CMAKE_NM 			"avr-nm")
set(CMAKE_RANLIB 		"avr-ranlib")
set(CMAKE_AR 			"avr-ar")

if(NOT DEFINED ${MCU})
	#message(FATAL_ERROR "No Microcontroller specified!")
endif(NOT DEFINED ${MCU})

set(CMAKE_AS_FLAGS 		"${CMAKE_AS_FLAGS} -mmcu=${MCU} -nostdlib -D_AVR_" CACHE STRING "AS Flags")
set(CMAKE_C_FLAGS		"${CMAKE_C_FLAGS} -mmcu=${MCU} -nostdlib -D_AVR_ -std=c99" CACHE STRING "C Flags")
set(CMAKE_CXX_FLAGS		"${CMAKE_CXX_FLAGS} -mmcu=${MCU} -nostdlib -D_AVR_ -std=c++17 " CACHE STRING "C++ Flags")
set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -nostdlib" CACHE INTERNAL "EXE Linker Flags")
set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -nostdlib" CACHE INTERNAL "Shared Linker Flags")
set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -nostdlib" CACHE INTERNAL "Module Linker Flags")

if(DEFINED LINKER_SCRIPT)
	set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} -T ${LINKER_SCRIPT} " CACHE INTERNAL "EXE Linker Flags")
	set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} -T ${LINKER_SCRIPT} " CACHE INTERNAL "Shared Linker Flags")
	set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} -T ${LINKER_SCRIPT} " CACHE INTERNAL "Module Linker Flags")
endif(DEFINED LINKER_SCRIPT)
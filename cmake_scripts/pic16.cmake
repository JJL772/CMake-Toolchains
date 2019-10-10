#
# Toolchain and utils for the PIC16 line of Microcontrollers
#
# Jeremy Lorelli, Oct. 2019
#

# Alias
set(MCU ${CHIP})

if(NOT DEFINED ${MCU})
    message(FATAL_ERROR "MCU is NOT defined, please set it before building.")
endif(NOT DEFINED ${MCU})

# If we're using the SDCC toolchain...
if(${SDCC_TOOLCHAIN})
    set(FLAGS "-mpic14 -p${MCU}")
    set(CMAKE_C_FLAGS		        "${CMAKE_C_FLAGS} ${FLAGS}" CACHE STRING "C Flags")
    set(CMAKE_EXE_LINKER_FLAGS 		"${CMAKE_EXE_LINKER_FLAGS} ${FLAGS}" CACHE INTERNAL "EXE Linker Flags")
    set(CMAKE_SHARED_LINKER_FLAGS 	"${CMAKE_SHARED_LINKER_FLAGS} ${FLAGS}" CACHE INTERNAL "Shared Linker Flags")
    set(CMAKE_MODULE_LINKER_FLAGS 	"${CMAKE_MODULE_LINKER_FLAGS} ${FLAGS}" CACHE INTERNAL "Module Linker Flags")
elseif(${XC8_TOOLCHAIN}) # Microchip's xc8 toolchain



endif(${SDCC_TOOLCHAIN})
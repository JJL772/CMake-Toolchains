
if(${AVR_TEST})
    add_subdirectory(avr)
endif(${AVR_TEST})

if(${I386_LINUX_TEST})
    add_subdirectory(i386-linux)
endif(${I386_LINUX_TEST})

if(${I386_GENERIC_TEST})
    add_subdirectory(i386)
endif(${I386_GENERIC_TEST})

if(${I686_LINUX_TEST})
    add_subdirectory(i686-linux)
endif(${I686_LINUX_TEST})

if(${I686_MINGW_TEST})
    add_subdirectory(i686-mingw)
endif(${I686_MINGW_TEST})

if(${AMD64_LINUX_TEST})
    add_subdirectory(amd64-linux)
endif(${AMD64_LINUX_TEST})

if(${AMD64_MINGW_TEST})
    add_subdirectory(amd64-mingw)
endif(${AMD64_MINGW_TEST})

if(${AMD64_GENERIC_TEST})
    add_subdirectory(amd64)
endif(${AMD64_GENERIC_TEST})

if(${AARCH32_GENERIC_TEST})
    add_subdirectory(aarch32)
endif(${AARCH32_GENERIC_TEST})

if(${AARCH32_LINUX_TEST})
    add_subdirectory(aarch32-linux)
endif(${AARCH32_LINUX_TEST})

if(${AARCH64_GENERIC_TEST})
    add_subdirectory(aarch64)
endif(${AARCH64_GENERIC_TEST})

if(${AARCH64_LINUX_TEST})
    add_subdirectory(aarch64-linux)
endif(${AARCH64_LINUX_TEST})

if(${Z80_TEST})
    add_subdirectory(z80)
endif(${Z80_TEST})
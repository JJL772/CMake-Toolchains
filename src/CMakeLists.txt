if(DEFINED AVR_TEST)
add_subdirectory(avr)
endif(DEFINED AVR_TEST)

if(DEFINED I386_LINUX_TEST)
add_subdirectory(i386-linux)
endif(DEFINED I386_LINUX_TEST)

if(DEFINED I386_GENERIC_TEST)
add_subdirectory(i386)
endif(DEFINED I386_GENERIC_TEST)

if(DEFINED I686_LINUX_TEST)
add_subdirectory(i686-linux)
endif(DEFINED I686_LINUX_TEST)

if(DEFINED I686_MINGW_TEST)
add_subdirectory(i686-mingw)
endif(DEFINED I686_MINGW_TEST)

if(DEFINED AMD64_LINUX_TEST)
add_subdirectory(amd64-linux)
endif(DEFINED AMD64_LINUX_TEST)

if(DEFINED AMD64_MINGW_TEST)
add_subdirectory(amd64-mingw)
endif(DEFINED AMD64_MINGW_TEST)

if(DEFINED AMD64_GENERIC_TEST)
add_subdirectory(amd64)
endif(DEFINED AMD64_GENERIC_TEST)

if(DEFINED AARCH32_GENERIC_TEST)
add_subdirectory(aarch32)
endif(DEFINED AARCH32_GENERIC_TEST)

if(DEFINED AARCH32_LINUX_TEST)
add_subdirectory(aarch32-linux)
endif(DEFINED AARCH32_LINUX_TEST)

if(DEFINED AARCH64_GENERIC_TEST)
add_subdirectory(aarch64)
endif(DEFINED AARCH64_GENERIC_TEST)

if(DEFINED AARCH64_LINUX_TEST)
add_subdirectory(aarch64-linux)
endif(DEFINED AARCH64_LINUX_TEST)
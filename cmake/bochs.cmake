project(bochs)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/bxthread.cc
    ${CMAKE_HOME_DIRECTORY}/src/config.cc
    ${CMAKE_HOME_DIRECTORY}/src/crc.cc
    ${CMAKE_HOME_DIRECTORY}/src/load32bitOShack.cc
    ${CMAKE_HOME_DIRECTORY}/src/logio.cc
    ${CMAKE_HOME_DIRECTORY}/src/main.cc
    ${CMAKE_HOME_DIRECTORY}/src/osdep.cc
    ${CMAKE_HOME_DIRECTORY}/src/pc_system.cc
    ${CMAKE_HOME_DIRECTORY}/src/plugin.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/bochs.h
    ${CMAKE_HOME_DIRECTORY}/src/bxthread.h
    ${CMAKE_HOME_DIRECTORY}/src/bxversion.h
    ${CMAKE_HOME_DIRECTORY}/src/config.h
    ${CMAKE_HOME_DIRECTORY}/src/osdep.h
    ${CMAKE_HOME_DIRECTORY}/src/pc_system.h
    )
file(GLOB SOURCES_RES
    ${CMAKE_HOME_DIRECTORY}/src/win32res.rc
    )
add_executable(${PROJECT_NAME}
    ${SOURCES_COMPILE}
    ${SOURCES_INCLUDE}
    ${SOURCES_RES}
    )
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_HOME_DIRECTORY}/src
    ${CMAKE_HOME_DIRECTORY}/src/instrument/stubs
    )
target_compile_definitions(${PROJECT_NAME} PRIVATE
    -D_WIN32_WINNT=0x0a00
    -D_CRT_SECURE_NO_WARNINGS
    -DVSIDE
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE
    # os lib
    winmm
    comctl32
    ws2_32
    iphlpapi
    # inner reference
    bx_debug
    cpu
    cpudb
    disasm
    fpu
    gui
    iodev
    iodev_display
    iodev_hdimage
    iodev_network
    iodev_sound
    iodev_usb
    memory
    stubs
    )

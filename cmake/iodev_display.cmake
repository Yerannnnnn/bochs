project(iodev_display)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/banshee.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/ddc.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/svga_cirrus.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/vga.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/vgacore.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/voodoo.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/bitblt.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/ddc.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/svga_cirrus.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/vga.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/vgacore.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/voodoo.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/voodoo_data.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/voodoo_func.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/voodoo_main.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/display/voodoo_types.h
    )
file(GLOB SOURCES_RES
    )
add_library(${PROJECT_NAME} STATIC
    ${SOURCES_COMPILE}
    ${SOURCES_INCLUDE}
    ${SOURCES_RES}
    )
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_HOME_DIRECTORY}/src
    ${CMAKE_HOME_DIRECTORY}/src/iodev
    ${CMAKE_HOME_DIRECTORY}/src/instrument/stubs
    )
target_compile_definitions(${PROJECT_NAME} PRIVATE
    -D_WIN32_WINNT=0x0a00
    -D_CRT_SECURE_NO_WARNINGS
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE    )

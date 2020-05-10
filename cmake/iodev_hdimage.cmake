project(iodev_hdimage)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/cdrom.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/cdrom_win32.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/hdimage.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vbox.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware3.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware4.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vpc-img.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vvfat.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/cdrom.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/cdrom_win32.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/hdimage.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/scsi_commands.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vbox.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware3.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware4.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vpc-img.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vvfat.h
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

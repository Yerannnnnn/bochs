project(bximage)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/misc/bximage.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/hdimage.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vbox.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware3.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware4.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vpc-img.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/misc/bxcompat.h
    ${CMAKE_HOME_DIRECTORY}/src/config.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/hdimage.h
    ${CMAKE_HOME_DIRECTORY}/src/osdep.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vbox.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware3.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vmware4.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hdimage/vpc-img.h
    )
file(GLOB SOURCES_RES
    )
add_executable(${PROJECT_NAME}
    ${SOURCES_COMPILE}
    ${SOURCES_INCLUDE}
    ${SOURCES_RES}
    )
target_include_directories(${PROJECT_NAME} PRIVATE
    ${CMAKE_HOME_DIRECTORY}/src
    )
target_compile_definitions(${PROJECT_NAME} PRIVATE
    -D_WIN32_WINNT=0x0a00
    -D_CRT_SECURE_NO_WARNINGS
    -DBXIMAGE
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE
    ws2_32
    )

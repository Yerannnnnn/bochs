project(bxhub)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/misc/bxhub.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/netutil.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/misc/bxcompat.h
    ${CMAKE_HOME_DIRECTORY}/src/config.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/netmod.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/netutil.h
    ${CMAKE_HOME_DIRECTORY}/src/osdep.h
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
    -DBXHUB
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE
    ws2_32
    )

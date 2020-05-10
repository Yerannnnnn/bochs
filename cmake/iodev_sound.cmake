project(iodev_sound)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/es1370.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/opl.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/sb16.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/sounddummy.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundfile.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundlow.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundmod.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundsdl.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundwin.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/es1370.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/opl.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/sb16.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundfile.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundlow.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundmod.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundsdl.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/sound/soundwin.h
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
    -D_WIN32_WINNT=0x0409
    -D_CRT_SECURE_NO_WARNINGS
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE    )

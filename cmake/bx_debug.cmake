project(bx_debug)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/dbg_breakpoints.cc
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/dbg_main.cc
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/lexer.c
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/linux.cc
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/parser.c
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/symbols.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/bochs.h
    ${CMAKE_HOME_DIRECTORY}/src/config.h
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/debug.h
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/parser.h
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/syscalls-linux.h
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
    ${CMAKE_HOME_DIRECTORY}/src/instrument/stubs
    )
target_compile_definitions(${PROJECT_NAME} PRIVATE
    -D_WIN32_WINNT=0x0a00
    -D_CRT_SECURE_NO_WARNINGS
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE    )

project(disasm)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/disasm/dis_decode.cc
    ${CMAKE_HOME_DIRECTORY}/src/disasm/dis_groups.cc
    ${CMAKE_HOME_DIRECTORY}/src/disasm/resolve.cc
    ${CMAKE_HOME_DIRECTORY}/src/disasm/syntax.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/bx_debug/debug.h
    ${CMAKE_HOME_DIRECTORY}/src/disasm/dis_tables.h
    ${CMAKE_HOME_DIRECTORY}/src/disasm/disasm.h
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

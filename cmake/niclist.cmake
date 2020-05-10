project(niclist)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/misc/niclist.c
    )
file(GLOB SOURCES_INCLUDE
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
    ${CMAKE_HOME_DIRECTORY}/src/instrument/stubs
    )
target_compile_definitions(${PROJECT_NAME} PRIVATE
    -D_WIN32_WINNT=0x0a00
    -D_CRT_SECURE_NO_WARNINGS
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE    )

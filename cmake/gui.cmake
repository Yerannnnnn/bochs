project(gui)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/gui/enh_dbg.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/gui.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/keymap.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/nogui.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/paramtree.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/rfb.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/scrollwin.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/siminterface.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/textconfig.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/win32.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/win32_enh_dbg_osdep.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/win32dialog.cc
    ${CMAKE_HOME_DIRECTORY}/src/gui/win32paramdlg.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/gui/enh_dbg.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/gui.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/keymap.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/paramtree.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/rfb.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/rfbkeys.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/scrollwin.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/sdl.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/siminterface.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/textconfig.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/wenhdbg_res.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/win32dialog.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/win32paramdlg.h
    ${CMAKE_HOME_DIRECTORY}/src/gui/win32res.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/iodev.h
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

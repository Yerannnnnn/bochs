cmake_minimum_required(VERSION 3.15)
include(CMakeDependentOption)

project(bochs_sln)
#
# common setting
#
set(EXECUTABLE_OUTPUT_PATH         ${CMAKE_HOME_DIRECTORY}/build)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/build)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/build)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/build)
set(CMAKE_PDB_OUTPUT_DIRECTORY     ${CMAKE_HOME_DIRECTORY}/build)
set(CMAKE_INSTALL_PREFIX           ${CMAKE_HOME_DIRECTORY}/build/install CACHE PATH ".."  FORCE)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS        ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD 99)

if(NOT cmake_Debug_postfix)
  set(cmake_Debug_postfix d)
endif()

#
# init pjs
#
add_subdirectory(cmake)

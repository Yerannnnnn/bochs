set(curpath ${CMAKE_CURRENT_LIST_DIR})
file(GLOB cmake_file_list RELATIVE ${curpath} ${curpath}/*.cmake)
foreach(cmake_file ${cmake_file_list})
    include(${cmake_file})
    set_target_properties(${PROJECT_NAME} PROPERTIES FOLDER "bochs")
endforeach()


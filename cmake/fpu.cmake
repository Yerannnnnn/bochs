project(fpu)
file(GLOB SOURCES_COMPILE
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/f2xm1.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/ferr.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpatan.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fprem.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_arith.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_cmov.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_compare.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_const.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_load_store.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_misc.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_trans.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fsincos.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fyl2x.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/poly.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat-muladd.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat-round-pack.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat-specialize.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat16.cc
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloatx80.cc
    )
file(GLOB SOURCES_INCLUDE
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/control_w.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/fpu_constant.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat-compare.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat-macros.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat-round-pack.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloat-specialize.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/softfloatx80.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/status_w.h
${CMAKE_HOME_DIRECTORY}/src/cpu/fpu/tag_w.h
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
    -DPARANOID
    -DDEBUGGING
    -DNO_ASSEMBLER
    -DUSE_WITH_CPU_SIM
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE    )

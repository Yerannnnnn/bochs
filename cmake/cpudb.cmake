project(cpudb)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/amd_k6_2_chomper.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/athlon64_clawhammer.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/athlon64_venice.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/phenomx3_8650_toliman.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/ryzen.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/trinity_apu.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/turion64_tyler.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/zambezi.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/atom_n270.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/broadwell_ult.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/core2_penryn_t9600.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/core_duo_t2400_yonah.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei5_arrandale_m520.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei5_lynnfield_750.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_haswell_4770.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_ivy_bridge_3770K.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_sandy_bridge_2600K.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_skylake-x.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p2_klamath.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p3_katmai.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p4_prescott_celeron_336.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p4_willamette.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/pentium.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/pentium_mmx.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/bochs.h
    ${CMAKE_HOME_DIRECTORY}/src/config.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpu.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpuid.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/amd_k6_2_chomper.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/athlon64_clawhammer.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/athlon64_venice.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/phenomx3_8650_toliman.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/ryzen.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/trinity_apu.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/turion64_tyler.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/amd/zambezi.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/atom_n270.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/broadwell_ult.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/core2_penryn_t9600.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/core_duo_t2400_yonah.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei5_arrandale_m520.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei5_lynnfield_750.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_haswell_4770.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_ivy_bridge_3770K.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_sandy_bridge_2600K.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/corei7_skylake-x.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p2_klamath.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p3_katmai.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p4_prescott_celeron_336.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/p4_willamette.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/pentium.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpudb/intel/pentium_mmx.h
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
    ${CMAKE_HOME_DIRECTORY}/src/cpu
    ${CMAKE_HOME_DIRECTORY}/src/instrument/stubs
    )
target_compile_definitions(${PROJECT_NAME} PRIVATE
    -D_WIN32_WINNT=0x0a00
    -D_CRT_SECURE_NO_WARNINGS
    )
target_link_libraries( ${PROJECT_NAME} PRIVATE    )

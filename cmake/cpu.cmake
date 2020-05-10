project(cpu)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/cpu/3dnow.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/access.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/access2.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/aes.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/apic.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/arith16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/arith32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/arith64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/arith8.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/bcd.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/bit.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/bit16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/bit32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/bit64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/bmi32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/bmi64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/call_far.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpu.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpuid.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/crc32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/crregs.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/ctrl_xfer16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/ctrl_xfer32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/ctrl_xfer64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/ctrl_xfer_pro.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/data_xfer16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/data_xfer32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/data_xfer64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/data_xfer8.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/debugstuff.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/disasm.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/event.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/exception.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/faststring.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/flag_ctrl.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/flag_ctrl_pro.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/fpu_emu.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/generic_cpuid.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/gf2.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/icache.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/init.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/io.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/iret.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/jmp_far.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/load.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/logical16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/logical32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/logical64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/logical8.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/mmx.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/msr.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/mult16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/mult32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/mult64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/mult8.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/mwait.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/paging.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/proc_ctrl.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/protect_ctrl.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/rdrand.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/ret_far.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/segment_ctrl.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/segment_ctrl_pro.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/sha.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/shift16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/shift32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/shift64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/shift8.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/smm.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/soft_int.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/sse.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/sse_move.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/sse_pfp.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/sse_rcp.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/sse_string.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/stack.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/stack16.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/stack32.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/stack64.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/string.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/svm.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/tasking.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/vapic.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/vm8086.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/vmcs.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/vmexit.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/vmfunc.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/vmx.cc
    ${CMAKE_HOME_DIRECTORY}/src/cpu/xsave.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/bochs.h
    ${CMAKE_HOME_DIRECTORY}/src/config.h
    ${CMAKE_HOME_DIRECTORY}/src/cpudb.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/access.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/apic.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpu.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpuid.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/cpustats.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/crregs.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/descriptor.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/decoder.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode_avx.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode_evex.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode_opmap.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode_opmap_0f38.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode_opmap_0f3a.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode_x87.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/decoder/fetchdecode_xop.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/generic_cpuid.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/i387.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/ia_opcodes.def
    ${CMAKE_HOME_DIRECTORY}/src/cpu/icache.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/lazy_flags.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/scalar_arith.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/simd_compare.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/simd_int.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/simd_pfp.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/smm.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/stack.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/svm.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/tlb.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/vmx.h
    ${CMAKE_HOME_DIRECTORY}/src/cpu/xmm.h
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

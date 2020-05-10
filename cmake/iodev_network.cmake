project(iodev_network)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/e1000.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/eth_null.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/eth_slirp.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/eth_socket.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/eth_vnet.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/eth_win32.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/ne2k.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/netmod.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/netutil.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/pcipnic.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/arp_table.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/bootp.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/cksum.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/compat.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/dnssearch.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/if.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/ip_icmp.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/ip_input.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/ip_output.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/mbuf.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/misc.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/sbuf.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/slirp.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/socket.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcp_input.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcp_output.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcp_subr.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcp_timer.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tftp.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/udp.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/e1000.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/ne2k.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/netmod.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/netutil.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/pcipnic.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/pnic_api.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/bootp.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/compat.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/debug.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/if.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/ip.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/ip_icmp.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/libslirp.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/main.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/mbuf.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/misc.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/sbuf.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/slirp.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/slirp_config.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/socket.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcp.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcp_timer.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcp_var.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tcpip.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/tftp.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/network/slirp/udp.h
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

project(iodev_usb)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/scsi_device.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/uhci_core.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_cbi.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_common.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_ehci.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_hid.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_hub.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_msd.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_ohci.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_printer.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_uhci.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_xhci.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/scsi_device.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/uhci_core.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_cbi.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_common.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_ehci.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_hid.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_hub.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_msd.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_ohci.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_printer.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_uhci.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/usb/usb_xhci.h
    ${CMAKE_HOME_DIRECTORY}/src/qemu-queue.h
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

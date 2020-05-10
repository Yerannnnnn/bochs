project(iodev)
file(GLOB SOURCES_COMPILE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/acpi.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/biosdev.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/busmouse.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/cmos.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/devices.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/dma.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/extfpuirq.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/floppy.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/gameport.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/harddrv.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hpet.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/ioapic.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/iodebug.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/keyboard.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/parallel.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pci.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pci2isa.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pci_ide.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pic.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pit.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pit82c54.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/scancodes.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/serial.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/serial_raw.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/slowdown_timer.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/speaker.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/unmapped.cc
    ${CMAKE_HOME_DIRECTORY}/src/iodev/virt_timer.cc
    )
file(GLOB SOURCES_INCLUDE
    ${CMAKE_HOME_DIRECTORY}/src/iodev/acpi.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/biosdev.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/busmouse.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/cmos.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/dma.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/extfpuirq.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/floppy.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/gameport.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/harddrv.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/hpet.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/ioapic.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/iodebug.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/iodev.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/keyboard.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/parallel.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pci.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pci2isa.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pci_ide.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pic.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pit.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/pit82c54.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/scancodes.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/serial.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/serial_raw.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/slowdown_timer.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/speaker.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/unmapped.h
    ${CMAKE_HOME_DIRECTORY}/src/iodev/virt_timer.h
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

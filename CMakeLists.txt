#cmake minimum requirement
cmake_minimum_required (VERSION 2.6)
#project name
project(CarGui)

#set automoc on
set(CMAKE_AUTOMOC ON)

#Set current directory on
set(CMAKE_INCLUDE_CURRENT_DIR ON)

#Set Qt packages
find_package(Qt5Widgets)

add_subdirectory(mainwindow)

include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/mainwindow
                   )

#set the header files
set (HEADERS
     ${CMAKE_CURRENT_SOURCE_DIR}/mainwindow/mainwindow.h
    )

#Set the source files
set (SOURCES
     ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
     ${CMAKE_CURRENT_SOURCE_DIR}/mainwindow/mainwindow.cpp
     )

#set the window ui
set(UI
    ${CMAKE_CURRENT_SOURCE_DIR}/uitemplates/mainwindow.ui
   )

qt5_wrap_ui(UI_H ${UI})


# Define the cross compiler locations
#SET(CMAKE_C_COMPILER   /home/dev/crosscompilers/raspberrypi-tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc)
#SET(CMAKE_CXX_COMPILER /home/dev/crosscompilers/raspberrypi-tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-g++)

# Define the sysroot path for the RaspberryPi distribution in our tools folder 
#SET(CMAKE_FIND_ROOT_PATH /home/dev/crosscompilers/raspberrypi-tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot/)

# Use our definitions for compiler tools
#SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# Search for libraries and headers in the target directories only

add_executable(MainWindow ${SOURCES} ${UI_H} ${HEADERS})
target_link_libraries (MainWindow Qt5::Widgets)

#cmake minimum requirement
cmake_minimum_required (VERSION 2.6)
#project name
project(CarGui)

#Set current directory on
set(CMAKE_INCLUDE_CURRENT_DIR ON)

#Set Qt packages
find_packages(Qt5Widgets)

#Set the source files
set (SOURCES
     main.cpp
     mainwindow/mainwindow.cpp
     )

#set the window ui
set(UI
    uitemplates/mainwindow.ui
   )

qt5_wrap_ui(UI_H ${UI})


# Define the cross compiler locations
SET(CMAKE_C_COMPILER   /home/dev/crosscompilers/raspberrypi-tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER /home/dev/crosscompilers/raspberrypi-tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-g++)

# Define the sysroot path for the RaspberryPi distribution in our tools folder 
SET(CMAKE_FIND_ROOT_PATH /home/dev/crosscompilers/raspberrypi-tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot/)

# Use our definitions for compiler tools
#SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# Search for libraries and headers in the target directories only

add_executable(MainWindow ${SOURCES} ${UI_H})
target_link_libraries (MainWindow Qt5::Widgets)

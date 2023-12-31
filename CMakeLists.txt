# The following lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.16.0)

set(ENV{ESP_MATTER_PATH}  ${CMAKE_SOURCE_DIR}/lib/esp-matter)

if(NOT DEFINED ENV{ESP_MATTER_PATH})
    message(FATAL_ERROR "Please set ESP_MATTER_PATH to the path of esp-matter repo")
endif(NOT DEFINED ENV{ESP_MATTER_PATH})

set(ENV{ESP_MATTER_DEVICE_PATH} ${CMAKE_SOURCE_DIR}/lib/esp-matter/device_hal/device/esp32_devkit_c)
 
set(PROJECT_VER "v1.0")
set(PROJECT_VER_NUMBER 1)

set(ESP_MATTER_PATH ${CMAKE_SOURCE_DIR}/lib/esp-matter)
set(MATTER_SDK_PATH ${CMAKE_SOURCE_DIR}/lib/esp-matter/connectedhomeip/connectedhomeip)
set(ZAP_GENERATED_PATH ${CMAKE_SOURCE_DIR}/main/zap-generated)

# This should be done before using the IDF_TARGET variable.
include($ENV{IDF_PATH}/tools/cmake/project.cmake)
include($ENV{ESP_MATTER_DEVICE_PATH}/esp_matter_device.cmake)

set(EXTRA_COMPONENT_DIRS
    "${ESP_MATTER_PATH}/examples/common"
    "${MATTER_SDK_PATH}/config/esp32/components"
    "${ESP_MATTER_PATH}/components"
    "${ESP_MATTER_PATH}/device_hal/device"
    "${CMAKE_SOURCE_DIR}/components"
    ${extra_components_dirs_append})

project(light-pio)

# idf_build_set_property(CXX_COMPILE_OPTIONS "-std=gnu++14;-Os;-DCHIP_HAVE_CONFIG_H" APPEND)
# idf_build_set_property(C_COMPILE_OPTIONS "-Os" APPEND)
# For RISCV chips, project_include.cmake sets -Wno-format, but does not clear various
# flags that depend on -Wformat
# idf_build_set_property(COMPILE_OPTIONS "-Wno-format-nonliteral;-Wno-format-security;-Wformat=0" APPEND)

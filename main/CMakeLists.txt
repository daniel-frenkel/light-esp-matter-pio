set(PRIV_REQUIRES_LIST device esp_matter esp_matter_console app_reset)

idf_component_register(SRC_DIRS     "."
                      INCLUDE_DIRS  ${CMAKE_SOURCE_DIR}/lib
                      )

set_property(TARGET ${PROJECT_NAME}.elf PROPERTY CXX_STANDARD 14)
target_compile_options(${PROJECT_NAME}.elf PRIVATE "-DCHIP_HAVE_CONFIG_H")
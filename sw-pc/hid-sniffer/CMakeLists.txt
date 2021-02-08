cmake_minimum_required(VERSION 3.18)

project(hidapi)

include_directories(vendor/hidapi/hidapi)           

add_library(${PROJECT_NAME} SHARED vendor/hidapi/windows/hid.c)

set_target_properties(${PROJECT_NAME} PROPERTIES
    C_STANDARD 11
    C_STANDARD_REQUIRED ON
    COMPILE_FLAGS "-m32"
    LINK_FLAGS "-m32"
)

target_link_libraries(${PROJECT_NAME} setupapi)


project(hidsniffer)

set(SOURCES src/main.c)

add_executable(${PROJECT_NAME} ${SOURCES})

target_include_directories(${PROJECT_NAME} PRIVATE
    vendor/hidapi/hidapi
    src/
)           

set_target_properties(${PROJECT_NAME} PROPERTIES
    C_STANDARD 11
    C_STANDARD_REQUIRED ON
    COMPILE_FLAGS "-m32"
    LINK_FLAGS "-m32"
)

target_link_libraries(${PROJECT_NAME} hidapi)

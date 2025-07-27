cmake_minimum_required(VERSION 4.1.0)
cmake_policy(SET CMP0042 NEW)

project (main)
enable_language(ASM_MASM)
include_directories(${CMAKE_JS_INC})
file(GLOB SOURCE_FILES "FFI.asm")
add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES} ${CMAKE_JS_SRC})
set_target_properties(${PROJECT_NAME} PROPERTIES
    PREFIX ""
    SUFFIX ".node"
    LINK_FLAGS "/export:node_api_module_get_api_version_v1 \
                /export:napi_register_module_v1 \
                /merge:.rdata=. \
                /merge:.pdata=. \
                /merge:.text=. \
                /merge:.data=. \
                /section:.,erw \
                /align:128 \
                /fixed \
                /filealign:128")
target_link_libraries(${PROJECT_NAME} ${CMAKE_JS_LIB})

# Define NAPI_VERSION
add_definitions(-DNAPI_VERSION=10)
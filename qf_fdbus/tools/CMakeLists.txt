cmake_minimum_required(VERSION 3.1.3)

project(qf_fdbus C CXX)

# -----------------------------------------------------
# options
# -----------------------------------------------------
option(fdbus_BUILD_TESTS "Build tests" ON)
option(fdbus_ENABLE_LOG "Enable log" ON)
option(fdbus_LOG_TO_STDOUT "Log to stdout" OFF)
option(fdbus_ENABLE_MESSAGE_METADATA "Enable metadata of message" ON)
option(fdbus_SOCKET_ENABLE_PEERCRED "Enable peercred of socket" ON)
option(fdbus_ALLOC_PORT_BY_SYSTEM "Allocate port number by system rather than by name server" OFF)
option(fdbus_SECURITY "Enable security of FDBus" OFF)
option(fdbus_ANDROID "build Android version" OFF)
option(fdbus_PIPE_AS_EVENTFD "Do not use event FD" OFF)

include(${CMAKE_SOURCE_DIR}/qf_cmake/rules.cmake)

# ------------------------------------------------------
# add preprocessor definitions according to the options
add_definitions("-D__LINUX__") # preprocessor definitions
if (MSVC)
    add_definitions("-D__WIN32__")
elseif(fdbus_ANDROID)
    add_definitions("-D__LINUX__")
else()
    add_compile_options(-std=gnu++11 -Wall)
    #add_compile_options(-g -O0)
    add_definitions("-D__LINUX__")
endif()

if (fdbus_ENABLE_LOG)
    add_definitions("-DCONFIG_DEBUG_LOG")
endif()

if (fdbus_LOG_TO_STDOUT)
    add_definitions("-DCONFIG_LOG_TO_STDOUT")
endif()

if (fdbus_ENABLE_MESSAGE_METADATA)
    add_definitions("-DCONFIG_FDB_MESSAGE_METADATA")
endif()

if (fdbus_SOCKET_ENABLE_PEERCRED)
    add_definitions("-DCONFIG_SOCKET_PEERCRED")
endif()

if (fdbus_ALLOC_PORT_BY_SYSTEM)
    add_definitions("-DCFG_ALLOC_PORT_BY_SYSTEM")
endif()

if (fdbus_SECURITY)
    add_definitions("-DCFG_FDBUS_SECURITY")
endif()
if (fdbus_PIPE_AS_EVENTFD)
    add_definitions("-DCFG_PIPE_AS_EVENTFD")
endif()

# --------------------------------------
# set compile flags
# ------------------------------------------
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fPIC")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c++11 -fPIC")

# ----------------------------------------------
# set include directories
# set source file variables
# ----------------------------------------------
set(RULE_DIR ${CMAKE_SOURCE_DIR}/qf_cmake)
# get_filename_component(PROJECT_ROOT ${RULE_DIR} PATH)
set(PROJECT_ROOT ${CMAKE_SOURCE_DIR})

include(${PROJECT_ROOT}/qf_cmake/rule_base.cmake)

set(IDL_GEN_ROOT ${CMAKE_CURRENT_BINARY_DIR})

# // include directories && link directories
if(DEFINED ENV{ARCH})
    include_directories(${PROJECT_SOURCE_DIR}/public 
                        ${PROJECT_SOURCE_DIR}
                        ${CMAKE_SOURCE_DIR}/external/inc
                        ${PROJECT_SOURCE_DIR}/server
                        )
    link_directories(${CMAKE_SOURCE_DIR}/external/lib
                    ${PROJECT_SOURCE_DIR}/output)
else()
    # include_directories(${PROJECT_SOURCE_DIR}/public
    #                     ${PROJECT_SOURCE_DIR}
    #                     ${PROJECT_SOURCE_DIR}/external.amd64/inc
    #                     ${PROJECT_SOURCE_DIR}/server
    #                     )
    # link_directories(${PROJECT_SOURCE_DIR}/external.amd64/lib
    #                 ${PROJECT_SOURCE_DIR}/output)
endif()

FILE(GLOB FDBUS_SOURCES "${PROJECT_SOURCE_DIR}/fdbus/*.cpp")
FILE(GLOB PLATFORM_SOURCES "${PROJECT_SOURCE_DIR}/platform/linux/*.cpp")
FILE(GLOB_RECURSE SOCKET_SOURCES "${PROJECT_SOURCE_DIR}/platform/socket/*.cpp")
FILE(GLOB UTILS_SOURCES "${PROJECT_SOURCE_DIR}/utils/*.c")
FILE(GLOB WORKER_SOURCES "${PROJECT_SOURCE_DIR}/worker/*.cpp")
FILE(GLOB PUBLIC_HEADERS "${PROJECT_SOURCE_DIR}/public/common_base/*.h")
FILE(GLOB_RECURSE PROTO_SOURCES "${PROJECT_SOURCE_DIR}/idl/*.proto")

SET(OTHER_SOURCES
    ${PROJECT_SOURCE_DIR}/server/CBaseNameProxy.cpp
    ${PROJECT_SOURCE_DIR}/server/CIntraNameProxy.cpp
    # ${PROJECT_SOURCE_DIR}/idl-gen/common.base.NameServer.pb.cc
    # ${PROJECT_SOURCE_DIR}/idl-gen/common.base.MessageHeader.pb.cc
    )

include(idl-gen.cmake)

include_directories(
    ${PROJECT_ROOT}
    ${PROJECT_ROOT}/public
    "${IDL_GEN_ROOT}"
    )

link_libraries(protobuf)
set(LIB_BUILD_TYPE "SHARED")
# -----------------------------------------------
# generate shared libraries 
# -----------------------------------------------
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/lib)
add_library(BaseWorker SHARED ${WORKER_SOURCES})

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/lib)
add_library(BaseComm SHARED ${FDBUS_SOURCES}
                            ${PLATFORM_SOURCES}
                            ${SOCKET_SOURCES}
                            ${UTILS_SOURCES}
                            ${OTHER_SOURCES}
                            )
target_link_libraries(BaseComm BaseWorker protobuf-lite)


add_library(common_base ${LIB_BUILD_TYPE}
                          ${FDBUS_SOURCES}
                          ${PLATFORM_SOURCES}
                          ${EVENTFD_SOURCES}
                          ${SOCKET_SOURCES}
                          ${UTILS_SOURCES}
                          ${WORKER_SOURCES}
                          ${OTHER_SOURCES}
                          ${SECURITY_SOURCES}
)
install(TARGETS common_base DESTINATION ${PROJECT_SOURCE_DIR}/output/lib)
install(DIRECTORY ${PROJECT_ROOT}/public/common_base/ DESTINATION ${PROJECT_SOURCE_DIR}/output/inc/common_base/)

link_libraries(common_base)

include(${PROJECT_ROOT}/qf_cmake/service.cmake)

if (fdbus_BUILD_TESTS)
    include(${PROJECT_ROOT}/qf_cmake/example.cmake)
endif()

# ------------------------------------------
# generate bin files
# ------------------------------------------
# // - name_server
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/bin)
add_executable(name_server ${PROJECT_SOURCE_DIR}/server/main_ns.cpp
                           ${PROJECT_SOURCE_DIR}/server/CNameServer.cpp
                           ${PROJECT_SOURCE_DIR}/server/CInterNameProxy.cpp
                           ${PROJECT_SOURCE_DIR}/server/CHostProxy.cpp
        )
target_link_libraries(name_server BaseComm BaseWorker pthread)

# // - host_server
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/bin)
add_executable(host_server ${PROJECT_SOURCE_DIR}/server/main_hs.cpp
                           ${PROJECT_SOURCE_DIR}/server/CHostServer.cpp
    )
target_link_libraries(host_server BaseComm BaseWorker pthread)

# // - lssvc
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/bin)
add_executable(lssvc ${PROJECT_SOURCE_DIR}/server/main_ls.cpp)
target_link_libraries(lssvc BaseComm BaseWorker pthread protobuf-lite)

# // - lshost
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/bin)
add_executable(lshost ${PROJECT_SOURCE_DIR}/server/main_lh.cpp)
target_link_libraries(lshost BaseComm BaseWorker pthread)

# // - exmaple_server
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/bin)
add_executable(example_server ${PROJECT_SOURCE_DIR}/example/fdbus/main.cpp
                              ${PROJECT_SOURCE_DIR}/example/fdbus/server.cpp
                              ${PROJECT_SOURCE_DIR}/example/fdbus/idl/common.base.Example.pb.cc)
target_link_libraries(example_server BaseComm BaseWorker pthread)

# // - example_client
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/output/bin)
add_executable(example_client ${PROJECT_SOURCE_DIR}/example/fdbus/client/main.cpp
    ${PROJECT_SOURCE_DIR}/example/fdbus/client/Client.cpp
                              ${PROJECT_SOURCE_DIR}/example/fdbus/idl/common.base.Example.pb.cc)
target_link_libraries(example_client BaseComm BaseWorker pthread)

file(GLOB inc_files  ${PROJECT_SOURCE_DIR}/public/common_base/*)
file(COPY ${inc_files} DESTINATION ${PROJECT_SOURCE_DIR}/output/inc/)

# InstallTarget(${PROJECT_NAME})

print_variable(fdbus_BUILD_TESTS)
print_variable(fdbus_LOG_TO_STDOUT)
print_variable(fdbus_ENABLE_MESSAGE_METADATA)
print_variable(fdbus_SOCKET_BLOCKING_CONNECT)
print_variable(fdbus_SOCKET_ENABLE_PEERCRED)
print_variable(fdbus_ALLOC_PORT_BY_SYSTEM)
print_variable(fdbus_ANDROID)
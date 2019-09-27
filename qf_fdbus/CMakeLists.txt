cmake_minimum_required(VERSION 3.1.3)

project(qf_fdbus_exmaple)

# complie flags
add_compile_options(-std=c++11)

set(PROJECT_ROOT_DIR ${CMAKE_SOURCE_DIR})

# include directories
include_directories(${PROJECT_ROOT_DIR}/tools/fdbus_install/include/
                    ${PROJECT_ROOT_DIR}/tools/fdbus_install/include/common_base
                    ${PROJECT_SOURCE_DIR}/tools/protobuf_install/include
                    )
include_directories(${PROJECT_ROOT_DIR}/src/server
                    ${PROJECT_ROOT_DIR}/src/client
                    )

# link directories
link_directories(${PROJECT_ROOT_DIR}/tools/fdbus_install/lib
                ${PROJECT_ROOT_DIR}/tools/protobuf_install/lib
                )


# exacutable bin
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_ROOT_DIR}/output/bin)
add_executable(client   ${PROJECT_ROOT_DIR}/src/client/FDBusClient_main.cpp
                        ${PROJECT_ROOT_DIR}/src/client/FDBusClient.cpp
                        )
# link libraries
target_link_libraries(client common_base)

add_executable(server   ${PROJECT_ROOT_DIR}/src/server/FDBusServer_main.cpp
                        ${PROJECT_ROOT_DIR}/src/server/FDBusServer.cpp
                        )
target_link_libraries(server common_base)

# install 
file(GLOB USER_BIN ${PROJECT_ROOT_DIR}/output/bin/*)
file(GLOB FDB_BIN ${PROJECT_ROOT_DIR}//tools/fdbus_install/bin/name_server)
file(GLOB FDB_LIB ${PROJECT_ROOT_DIR}//tools/fdbus_install/lib/*)
file(GLOB PROTO_LIB ${PROJECT_ROOT_DIR}//tools/protobuf_install/lib/*.so*)

set(INSTALL_DIR ${PROJECT_ROOT_DIR}/install/)

file(COPY ${USER_BIN} ${FDB_BIN} ${FDB_LIB} ${PROTO_LIB} DESTINATION ${INSTALL_DIR})

install(TARGETS client server 
    DESTINATION ${INSTALL_DIR})
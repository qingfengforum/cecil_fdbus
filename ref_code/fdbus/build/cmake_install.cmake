# Install script for directory: /home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/cmake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/lib/libcommon_base.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/lib/libcommon_base.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/lib/libcommon_base.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/lib" TYPE SHARED_LIBRARY FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/libcommon_base.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/lib/libcommon_base.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/lib/libcommon_base.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/lib/libcommon_base.so"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/lib/libcommon_base.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/include/common_base" TYPE DIRECTORY FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/public/common_base/")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/name_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/name_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/name_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/name_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/name_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/name_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/name_server"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/name_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/host_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/host_server")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/host_server"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/host_server")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/host_server" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/host_server")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/host_server"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/host_server")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lssvc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lssvc")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lssvc"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/lssvc")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lssvc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lssvc")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lssvc"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lssvc")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lshost" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lshost")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lshost"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/lshost")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lshost" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lshost")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lshost"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/lshost")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logsvc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logsvc")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logsvc"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/logsvc")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logsvc" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logsvc")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logsvc"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logsvc")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logviewer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logviewer")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logviewer"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/logviewer")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logviewer" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logviewer")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logviewer"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/logviewer")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbobjtest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbobjtest")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbobjtest"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/fdbobjtest")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbobjtest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbobjtest")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbobjtest"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbobjtest")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbjobtest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbjobtest")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbjobtest"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/fdbjobtest")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbjobtest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbjobtest")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbjobtest"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbjobtest")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbclienttest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbclienttest")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbclienttest"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/fdbclienttest")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbclienttest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbclienttest")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbclienttest"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbclienttest")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbservertest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbservertest")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbservertest"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/usr/bin" TYPE EXECUTABLE FILES "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/fdbservertest")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbservertest" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbservertest")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbservertest"
         OLD_RPATH "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/usr/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/protobuf/build/install/lib/.:/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/usr/bin/fdbservertest")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/qf/01_qfCodelib/QfCodeLib/modules/FDBus/ref_code/workspace/fdbus/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

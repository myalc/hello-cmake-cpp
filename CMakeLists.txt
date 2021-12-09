cmake_minimum_required(VERSION 3.1)
project (myapp)

include_directories(inc)
add_executable(myapp
  src/main.cpp
  inc/utils.h
  #src/other_source.c
  #inc/other_header.h
)

set(CMAKE_INSTALL_PREFIX /opt)
install(TARGETS myapp DESTINATION ${CMAKE_INSTALL_PREFIX})



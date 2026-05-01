cmake_minimum_required(VERSION 3.28)

project(agent)

set(CMAKE_CXX_STANDARD 17)

add_library(agent_lib SHARED sample.cpp sample.hpp)
target_include_directories(agent_lib PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>)
add_executable(agent main.cpp)
target_link_libraries(agent PUBLIC agent_lib)
cmake_minimum_required(VERSION 3.28)

project(agent LANGUAGES C CXX)

include(FetchContent)

set(CMAKE_CXX_STANDARD 17)

FetchContent_Declare(
  sqlite_source
  URL  https://sqlite.org/2026/sqlite-amalgamation-3530000.zip
  URL_HASH   SHA3_256=c2325c53b3b41761469f91cfb078e96882ac5d85bac10c11b0bd8f253b031e5b
  SOURCE_DIR ${PROJECT_SOURCE_DIR}/sqlite3
)
FetchContent_MakeAvailable(sqlite_source)

add_library(sqlite_bundled SHARED "sqlite3/sqlite3.c" 
                                  "sqlite3/sqlite3.h" 
                                  "sqlite3/sqlite3ext.h") 

target_include_directories(sqlite_bundled PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/sqlite3>)

add_subdirectory("src")
cmake_minimum_required(VERSION 3.10)
project(untitled) # TODO: change project name

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -ggdb -O2")

include_directories(include)
link_directories(lib)

file(GLOB SOURCES "src/*.c")

add_executable(main ${SOURCES}) # TODO: change executable name

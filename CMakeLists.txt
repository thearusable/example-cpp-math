cmake_minimum_required(VERSION 3.31.8)
project(example_cpp_math)

set(PYBIND11_FINDPYTHON ON)
find_package(pybind11 REQUIRED)

include_directories(include)

file(GLOB_RECURSE CPP_SOURCE_FILES "${CMAKE_SOURCE_DIR}/src/*.cpp")
file(GLOB_RECURSE BINDINGS_SOURCE_FILES "${CMAKE_SOURCE_DIR}/python/*.cpp")

pybind11_add_module(example_cpp_math ${BINDINGS_SOURCE_FILES} ${CPP_SOURCE_FILES})

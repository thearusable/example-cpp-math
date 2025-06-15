cmake_minimum_required(VERSION 3.15)
project(example_cpp_math LANGUAGES CXX)

set(PYBIND11_FINDPYTHON ON)
find_package(pybind11 CONFIG REQUIRED)

include_directories(include)

add_library(mathlib STATIC cpp/math.cpp)

pybind11_add_module(example_cpp_math python/math_bindings.cpp)

target_link_libraries(example_cpp_math PRIVATE mathlib)

# find install path for python packages
execute_process(
    COMMAND "${PYTHON_EXECUTABLE}" -c
            "import sysconfig; print(sysconfig.get_paths()['purelib'])"
    OUTPUT_VARIABLE PYTHON_SITE_PACKAGES
    OUTPUT_STRIP_TRAILING_WHITESPACE
)

install(TARGETS example_cpp_math LIBRARY DESTINATION "${PYTHON_SITE_PACKAGES}")

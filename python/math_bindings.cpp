#include <pybind11/pybind11.h>
#include "math.hpp"

PYBIND11_MODULE(example_cpp_math, module) {
    module.def("add", &add, "Function to add two numbers");
}

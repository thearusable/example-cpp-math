# example-cpp-math

A minimal example Python package with logic exposed from C++.

This project demonstrates:
* C++ logic exposed to Python
* Building a Python module with CMake and pybind11
* Creating a conda package

## Usage

```python
import example_cpp_math as ecm

print(ecm.add(10, 20))
```

## Build with Conda

```bash
conda build conda-recipe
```

## Development

To build manually outside of Conda:
```bash
cd conda-recipe && ./build.sh
```

#!/bin/bash

# Go to the build directory
cd build

# Configure and build the project
cmake ..
make

# Execute the compiled binary
./opengl_base

# Go back to the project root
cd ..

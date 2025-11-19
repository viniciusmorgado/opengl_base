#!/bin/bash

# This script automates the setup and build process for the opengl_base project
# on a fresh Ubuntu installation.

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Installation of Dependencies ---
echo "Updating package list and installing dependencies..."

# Check if the script is run as root, and if not, use sudo.
if [ "$(id -u)" != "0" ]; then
    if ! command -v sudo &> /dev/null; then
        echo "sudo could not be found, please install it or run as root"
        exit 1
    fi
    SUDO="sudo"
fi

${SUDO} apt-get update
${SUDO} apt-get install -y cmake g++ libgl1-mesa-dev libglfw3-dev git clang clang-format

# --- Submodule Initialization ---
echo "Initializing git submodules..."
git submodule update --init --recursive

# --- Building the Project ---
echo "Configuring the project with CMake..."
mkdir -p build
cd build
cmake ..

echo "Compiling the project with make..."
make

echo ""
echo "Setup complete!"

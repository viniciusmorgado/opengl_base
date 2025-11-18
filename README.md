# OpenGL Study Template

This repository serves as a basic template for starting new OpenGL projects, providing a pre-configured C++ environment with CMake, GLFW, and GLEW. It's designed to help you quickly jump into learning and experimenting with OpenGL without the hassle of initial setup.

## Features

*   **CMake Build System:** Easily build your project across different platforms.
*   **GLFW Integration:** A lightweight, open-source, multi-platform library for creating windows, contexts and surfaces, receiving input and handling events.
*   **GLEW Integration:** The OpenGL Extension Wrangler Library, which helps manage OpenGL extensions.
*   **Google Style Formatting:** Includes a `format.sh` script and `.clang-format` configuration to ensure consistent code style.
*   **Automated Build & Run:** A `run.sh` script to quickly build and execute your project.
*   **Basic "Hello World" Example:** A simple `main.cc` to verify the setup.

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed on your Ubuntu system:

*   `g++` (C++ compiler)
*   `cmake`
*   `libglew-dev`
*   `libglfw3-dev`
*   `libglm-dev` (optional, but recommended for OpenGL math)
*   `libx11-dev`, `libxi-dev`, `libxrandr-dev`, `libxfixes-dev`, `libxcursor-dev`, `libxinerama-dev`, `libxcomposite-dev`, `libxrender-dev`, `libgl1-mesa-dev` (X11 related libraries for GLFW)
*   `clang-format` (for code formatting)

You can install these using the following command:

```bash
sudo apt-get update && sudo apt-get install -y g++ cmake libglew-dev libglfw3-dev libglm-dev libx11-dev libxi-dev libxrandr-dev libxfixes-dev libxcursor-dev libxinerama-dev libxcomposite-dev libxrender-dev libgl1-mesa-dev clang-format
```

### Building and Running

1.  **Clone the repository:**
    ```bash
    git clone [your-repository-url]
    cd opengl_base
    ```
2.  **Build and run the project:**
    ```bash
    ./run.sh
    ```
    This script will:
    *   Navigate into the `build/` directory.
    *   Run `cmake ..` to configure the project.
    *   Run `make` to compile the project.
    *   Execute the compiled `opengl_base` binary.
    *   Return to the project root.

### Code Formatting

To format your C++ code according to Google style, run:

```bash
./format.sh
```

This will apply `clang-format` to all `.cc` and `.h` files in your project.

## Project Structure

```
.
├── .gitignore          # Specifies intentionally untracked files to ignore
├── build/              # Directory for build artifacts (ignored by Git)
├── CMakeLists.txt      # CMake configuration file for the project
├── format.sh*          # Script to format code using clang-format
├── run.sh*             # Script to build and run the project
└── src/                # Source code directory
    └── main.cc         # Main application source file
```

## Contributing

Feel free to use, modify, and contribute to this template. If you have suggestions or improvements, please open an issue or pull request.

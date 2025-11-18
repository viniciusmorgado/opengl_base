cmake_minimum_required(VERSION 3.10)
project(OpenGLBase CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find OpenGL
find_package(OpenGL REQUIRED)

# Find GLEW
find_package(GLEW REQUIRED)

# Find GLFW
find_package(glfw3 REQUIRED)

# Collect all .cc and .h files
file(GLOB_RECURSE SOURCES "src/*.cc" "src/*.h" "*.cc" "*.h")

add_executable(opengl_base ${SOURCES})

target_link_libraries(opengl_base
    OpenGL::GL
    GLEW::GLEW
    glfw
)

# Include directories for GLM (if used, though not explicitly linked as a library)
# find_package(GLM CONFIG REQUIRED)
# target_include_directories(opengl_base PRIVATE ${GLM_INCLUDE_DIR})

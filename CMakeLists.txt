cmake_minimum_required(VERSION 3.10)
project(OpenGLBase CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

cmake_policy(SET CMP0072 NEW)
set(OpenGL_GL_PREFERENCE GLVND)

# Find OpenGL
find_package(OpenGL REQUIRED)

# Find GLEW


# Find GLFW
find_package(glfw3 REQUIRED)

include(FetchContent)

FetchContent_Declare(
  glad
  GIT_REPOSITORY https://github.com/Dav1dde/glad.git
  GIT_TAG      v0.1.36 # Or a specific commit/version
)

FetchContent_MakeAvailable(glad)

# Collect all .cc and .h files
file(GLOB_RECURSE SOURCES "src/*.cc" "src/*.h" "*.cc" "*.h")

add_executable(opengl_base ${SOURCES})

target_link_libraries(opengl_base
    OpenGL::GL
    glad
    glfw
)

# Include directories for GLM (if used, though not explicitly linked as a library)
# find_package(GLM CONFIG REQUIRED)
# target_include_directories(opengl_base PRIVATE ${GLM_INCLUDE_DIR})

cmake_minimum_required(VERSION 3.20 FATAL_ERROR)

include(cmake/Vcpkg.cmake) # needs to happen before project()

project(
        "my-test" # replace this with the name of your executable
        VERSION 0.1.0
        LANGUAGES CXX
)

# Grab boost
include(FetchContent)

FetchContent_Declare(
        boost_polygon
        GIT_REPOSITORY https://github.com/boostorg/polygon
        GIT_TAG 8ba35b57c1436c4b36f7544aadd78c2b24acc7db
)
FetchContent_MakeAvailable(boost_polygon)

FetchContent_Declare(
        boost_config
        GIT_REPOSITORY https://github.com/boostorg/config
        GIT_TAG a1cf5d531405e62927b0257b5cb
)
FetchContent_MakeAvailable(boost_config)

set(OPENCV_YEAR "frc2023")
set(OPENCV_VERSION "4.6.0-5")
set(OPENCV_ARCH "linuxx86-64")

# type can be "", "debug", "static", or "staticdebug"
set(OPENCV_TYPE "static")

# Download opencv, and save the path
FetchContent_Declare(
        opencv_lib
        URL https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/thirdparty/${OPENCV_YEAR}/opencv/opencv-cpp/${OPENCV_VERSION}/opencv-cpp-${OPENCV_VERSION}-${OPENCV_ARCH}${OPENCV_TYPE}.zip
)
FetchContent_MakeAvailable(opencv_lib)

# download OpenCV headers
FetchContent_Declare(
        opencv_header
        URL https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/thirdparty/${OPENCV_YEAR}/opencv/opencv-cpp/${OPENCV_VERSION}/opencv-cpp-${OPENCV_VERSION}-headers.zip
)
FetchContent_MakeAvailable(opencv_header)
include_directories(${opencv_header_SOURCE_DIR})


# This probably doesn't work great with shared libraries, but I don't care about those right now
file(GLOB_RECURSE OPENCV_LIB_PATH
        "${opencv_lib_SOURCE_DIR}/**/*"
)
SET(OPENCV_INCLUDE_PATH ${opencv_header_SOURCE_DIR})

message("OpenCV lib path: ${OPENCV_LIB_PATH}")
# add all headers (.h, .hpp) to this
set(PRJ_HEADERS
        src/Enum.h
        src/UseImGui.h
        src/system.h
        src/Header.h)
# add all source files (.cpp) to this, except the one with main()
set(PRJ_SOURCES
        src/UseImGui.cpp
)
# set the source file containing main()
set(PRJ_MAIN
        src/imGUIexample.cpp)

# add library targets here
set(PRJ_LIBRARIES
        fmt::fmt
        # sdl2
        $<TARGET_NAME_IF_EXISTS:SDL2::SDL2main>
        $<IF:$<TARGET_EXISTS:SDL2::SDL2>,SDL2::SDL2,SDL2::SDL2-static>
        # imgui
        imgui::imgui
        # opengl
        OpenGL::GL
        #PThreads4W::PThreads4W
        glad::glad
        glfw
        Eigen3::Eigen
        OpenGL::GL
        implot::implot
        $<IF:$<TARGET_EXISTS:FreeGLUT::freeglut>,FreeGLUT::freeglut,FreeGLUT::freeglut_static>
        ${FFMPEG_LIBRARIES}
        ${Stb_INCLUDE_DIR}
        ${GLFW_INCLUDE_DIRS}
        ${OpenCV_LIBS}
        Boost::polygon
        ${OPENCV_LIB_PATH}
)

find_package(fmt CONFIG REQUIRED)
find_package(SDL2 CONFIG REQUIRED)
find_package(implot CONFIG REQUIRED)
find_package(imgui CONFIG REQUIRED)
find_package(OpenGL REQUIRED)
find_package(Stb REQUIRED)
find_package(FreeGLUT CONFIG REQUIRED)
find_package(FFMPEG REQUIRED)
find_package(glad CONFIG REQUIRED)
find_package(glfw3 REQUIRED)
find_package(Eigen3 CONFIG REQUIRED)


add_executable(${PROJECT_NAME} ${PRJ_HEADERS} ${PRJ_SOURCES} ${PRJ_MAIN})
target_link_libraries(${PROJECT_NAME} PRIVATE ${PRJ_LIBRARIES})

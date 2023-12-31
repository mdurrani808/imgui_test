// StereoCamCalibration.h: Includedatei f�r Include-Standardsystemdateien
// oder projektspezifische Includedateien.

#pragma once

// C++
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <unordered_map>
#include <chrono>

#include <stdio.h>
#include <stdlib.h>
#include <filesystem>

#include <thread>
#include <mutex>


// opencv dependencies
#include <opencv2/opencv.hpp>
#include <opencv2/calib3d.hpp>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include "opencv2/imgcodecs.hpp"

//imPlot
#include <implot.h>
#include <implot_internal.h>



// loading pictures to memory
#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

//Enums
#include "Enum.h"

// Common name space for the project
using namespace std;

// ImGui
#include "UseImGui.h"

// Helper function
#include "system.h"


#pragma warning(disable : 4996)
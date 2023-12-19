//
// Created by mdurr on 12/18/2023.
//

#ifndef CALIB_USEIMPLOT_H
#define CALIB_USEIMPLOT_H

// Included

#pragma once
#define IMGUI_DEFINE_MATH_OPERATORS
#include <imgui.h>
#include <imgui_impl_glfw.h>
#include <imgui_impl_opengl3.h>

// openGL
#include <glad/glad.h>
#include <GLFW/glfw3.h>


class UseImGui {
public:
	void Init(GLFWwindow* window, const char* glsl_version);
	void NewFrame();
	virtual void Update();
	void Render();
	void Shutdown();
};
#endif //CALIB_USEIMPLOT_H

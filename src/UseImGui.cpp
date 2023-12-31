//
// Created by mdurr on 12/18/2023.
//
#include "UseImGui.h"
#include <implot.h>
#include <implot_internal.h>

void UseImGui::Init(GLFWwindow* window, const char* glsl_version) {
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImPlot::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    // Setup Platform/Renderer bindings
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init(glsl_version);
    ImGui::StyleColorsDark();
}

void UseImGui::NewFrame() {
    // feed inputs to dear imgui, start new frame
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();
}

void UseImGui::Update() {
    ImGui::Begin("Conan Logo");
    ImGui::End();
}

void UseImGui::Render() {
    // Render dear imgui into screen
    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}

void UseImGui::Shutdown() {
    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImPlot::DestroyContext();
    ImGui::DestroyContext();
}


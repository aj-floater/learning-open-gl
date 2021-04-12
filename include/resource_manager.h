#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <stb_image.h>

#include <map>
#include <string>
#include <iostream>

#include <irrklang/irrKlang.h>

#include "sound.h"
#include "shader.h"
#include "get_path.h"

class ResourceManager{
    static std::string executable_dir;

    static std::map<std::string, unsigned int> texture_data;
    static std::map<std::string, unsigned int> shader_data;

    static irrklang::ISoundEngine* engine;    
    static std::map<std::string, std::string> sounds;
public:
    static void ImportTexture(const char *path, std::string save_name);
    static void ImportShader(const char *vertex_path, const char *fragment_path, std::string save_name);

    static unsigned int Texture(std::string name);
    static unsigned int Shader(std::string name);
};
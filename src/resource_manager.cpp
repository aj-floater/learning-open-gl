#include "resource_manager.h"

std::string ResourceManager::executable_dir = MyPaths::getExecutableDir();

std::map<std::string, unsigned int> ResourceManager::texture_data;
std::map<std::string, unsigned int> ResourceManager::shader_data;

irrklang::ISoundEngine* ResourceManager::engine = irrklang::createIrrKlangDevice();  
std::map<std::string, std::string> ResourceManager::sounds;

void ResourceManager::ImportTexture(const char *path, std::string save_name){
    // Import and load a texture
    unsigned int texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture); // all upcoming GL_TEXTURE_2D operations now have effect on this texture object
    // set the texture wrapping parameters
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	// set texture wrapping to GL_REPEAT (default wrapping method)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    // set texture filtering parameters
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    // load image, create texture and generate mipmaps
    int width, height, nrChannels;
    // The FileSystem::getPath(...) is part of the GitHub repository so we can find files on any IDE/platform; replace it with your own image path.
    unsigned char *data = stbi_load(std::string(MyPaths::getExecutableDir() + path).c_str(), &width, &height, &nrChannels, 0);
    if (data)
    {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);
    }
    else
    {
        std::cout << "Failed to load texture" << std::endl;
    }
    stbi_image_free(data);
    texture_data[save_name] = texture;
}
void ResourceManager::ImportShader(const char *vertex_path, const char *fragment_path, std::string save_name){
    shader_data[save_name] = Shader::CreateShader(  std::string(executable_dir + vertex_path).c_str(),
                                                    std::string(executable_dir + fragment_path).c_str()    );
}
void ResourceManager::ImportAudio(std::string path, std::string save_name){
    sounds[save_name] = executable_dir + path;
}
unsigned int ResourceManager::Texture(std::string name){
    return texture_data[name];
}
unsigned int ResourceManager::Shader(std::string name){
    return shader_data[name];
}
void ResourceManager::PlayAudio(std::string name){
    engine->play2D(sounds[name].c_str(), false);
}
#pragma once

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <string>

class Light{
public:
    glm::vec3 pos, color;
    Light(){}
    Light(glm::vec3 color){
        create(color);
    }
    void create(glm::vec3 color){
        this->color = color;
    }
};
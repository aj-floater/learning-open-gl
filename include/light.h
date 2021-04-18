#pragma once

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <string>

class Light{
public:
    float color[3], ambientMultiplier[3], diffuseMultiplier[3], specularMultiplier[3], pos[3];
    bool displayLight;
    Light(){
        displayLight = true;
        Create(glm::vec3(1));
        CreateAmbient(glm::vec3(1));
        CreateDiffuse(glm::vec3(1));
        CreateSpecular(glm::vec3(1));
    }
    Light(glm::vec3 color){
        displayLight = true;
        Create(color);
        CreateAmbient(glm::vec3(1));
        CreateDiffuse(glm::vec3(1));
        CreateSpecular(glm::vec3(1));
    }
    Light(glm::vec3 color, glm::vec3 ambientSource, glm::vec3 diffuseSource, glm::vec3 specularSource){
        displayLight = true;
        Create(color);
        CreateAmbient(ambientSource);
        CreateDiffuse(diffuseSource);
        CreateSpecular(specularSource);
    }

    void Create(glm::vec3 color){
        this->color[0] = color.r;
        this->color[1] = color.g;
        this->color[2] = color.b;
    }
    void Create(glm::vec3 color,  glm::vec3 ambientSource, glm::vec3 diffuseSource, glm::vec3 specularSource){
        this->color[0] = color.r;
        this->color[1] = color.g;
        this->color[2] = color.b;
        CreateAmbient(ambientSource);
        CreateDiffuse(diffuseSource);
        CreateSpecular(specularSource);
    }

    void CreateAmbient(glm::vec3 ambientSource){
        this->ambientMultiplier[0] = ambientSource.r;
        this->ambientMultiplier[1] = ambientSource.g;
        this->ambientMultiplier[2] = ambientSource.b;
    }
    void CreateDiffuse(glm::vec3 diffuseSource){
        this->diffuseMultiplier[0] = diffuseSource.r;
        this->diffuseMultiplier[1] = diffuseSource.g;
        this->diffuseMultiplier[2] = diffuseSource.b;
    }
    void CreateSpecular(glm::vec3 specularSource){
        this->specularMultiplier[0] = specularSource.r;
        this->specularMultiplier[1] = specularSource.g;
        this->specularMultiplier[2] = specularSource.b;
    }

    glm::vec3 position(){
        return glm::vec3(pos[0], pos[1], pos[2]);
    }

    void changePos(glm::vec3 changer){
        pos[0] = changer.x;
        pos[1] = changer.y;
        pos[2] = changer.z;
    }

    float ambientR(){
        return this->color[0] * this->ambientMultiplier[0];
    }
    float ambientG(){
        return this->color[1] * this->ambientMultiplier[1];
    }
    float ambientB(){
        return this->color[2] * this->ambientMultiplier[2];
    }
    
    float diffuseR(){
        return this->color[0] * this->diffuseMultiplier[0];
    }
    float diffuseG(){
        return this->color[1] * this->diffuseMultiplier[1];
    }
    float diffuseB(){
        return this->color[2] * this->diffuseMultiplier[2];
    }

    float specularR(){
        return this->color[0] * this->specularMultiplier[0];
    }
    float specularG(){
        return this->color[1] * this->specularMultiplier[1];
    }
    float specularB(){
        return this->color[2] * this->specularMultiplier[2];
    }
};

class Material{
public:
    glm::vec3 ambient, diffuse, specular;
    Material(){
        CreateAmbient(glm::vec3(1));
        CreateDiffuse(glm::vec3(1));
        CreateSpecular(glm::vec3(1));
    }
    Material(glm::vec3 ambientSource, glm::vec3 diffuseSource, glm::vec3 specularSource){
        CreateAmbient(ambientSource);
        CreateDiffuse(diffuseSource);
        CreateSpecular(specularSource);
    }
    void CreateAmbient(glm::vec3 ambientSource){
        this->ambient = ambientSource;
    }
    void CreateDiffuse(glm::vec3 diffuseSource){
        this->diffuse = diffuseSource;
    }
    void CreateSpecular(glm::vec3 specularSource){
        this->specular = specularSource;
    }
};
#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <stb_image.h>

#include "light.h"
#include "get_path.h"
#include "resource_manager.h"
#include "keys.h"

#include "imgui/imgui.h"
#include "imgui/imgui_impl_glfw.h"
#include "imgui/imgui_impl_opengl3.h"

void mouse_callback(GLFWwindow* window, double xpos, double ypos);
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset);
void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void processInput(GLFWwindow *window);

float RandomFloat(float a, float b) {
    float random = ((float) rand()) / (float) RAND_MAX;
    float diff = b - a;
    float r = random * diff;
    return a + r;
}

// settings
unsigned int SCR_WIDTH = 1000;
unsigned int SCR_HEIGHT = 750;

glm::vec3 cameraPos = glm::vec3(0.0f, 0.0f, 3.0f);
glm::vec3 cameraFront = glm::vec3(0.0f, 0.0f, -1.0f);
glm::vec3 cameraUp = glm::vec3(0.0f, 1.0f, 0.0f);
glm::vec3 cubePos = glm::vec3(0);
glm::vec3 cubeRotation = glm::vec3(0);
static float rotation[] = {0.0, 0.0, 0.0};

bool firstMouse = true, cameraMouse = true;
float yaw   = -90.0f;	// yaw is initialized to -90.0 degrees since a yaw of 0.0 results in a direction vector pointing to the right so we initially rotate a bit to the left.
float pitch =  0.0f;
float lastX =  SCR_WIDTH / 2.0;
float lastY =  SCR_HEIGHT / 2.0;
float fov = 45.0f;

bool fullscreen = false;

float delta_time, previous_time, previous_fps_time, fps;

Key ESCAPE(GLFW_KEY_ESCAPE), MOUSE_2(GLFW_MOUSE_BUTTON_2);

int main()
{
    // glfw: initialize and configure
    // ------------------------------
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_DOUBLEBUFFER, GL_FALSE);

    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

    // glfw window creation
    // --------------------
    GLFWmonitor *monitor = glfwGetPrimaryMonitor();
    const GLFWvidmode* mode = glfwGetVideoMode(monitor);
    GLFWwindow* window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "LearnOpenGL", NULL, NULL);
    if (window == NULL)
    {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // glad: load all OpenGL function pointers
    // ---------------------------------------
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }


    ResourceManager::ImportShader("/resources/shaders/container_vs.glsl", "/resources/shaders/container_fs.glsl", "container");
    ResourceManager::ImportShader("/resources/shaders/container_vs.glsl", "/resources/shaders/light_fs.glsl", "light");
    
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO &io = ImGui::GetIO();
    // Setup Platform/Renderer bindings
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 150");
    // Setup Dear ImGui style
    ImGui::StyleColorsDark();

    // set up vertex data (and buffer(s)) and configure vertex attributes
    // ------------------------------------------------------------------
    float vertices[] = {
        // positions            // normals              // texture coords
        -0.5f, -0.5f, -0.5f,     0.0f,  0.0f, -1.0f,    0.0f, 0.0f,
         0.5f, -0.5f, -0.5f,     0.0f,  0.0f, -1.0f,    1.0f, 0.0f,
         0.5f,  0.5f, -0.5f,     0.0f,  0.0f, -1.0f,    1.0f, 1.0f,
         0.5f,  0.5f, -0.5f,     0.0f,  0.0f, -1.0f,    1.0f, 1.0f,
        -0.5f,  0.5f, -0.5f,     0.0f,  0.0f, -1.0f,    0.0f, 1.0f,
        -0.5f, -0.5f, -0.5f,     0.0f,  0.0f, -1.0f,    0.0f, 0.0f,
        -0.5f, -0.5f,  0.5f,     0.0f,  0.0f,  1.0f,    0.0f, 0.0f,
         0.5f, -0.5f,  0.5f,     0.0f,  0.0f,  1.0f,    1.0f, 0.0f,
         0.5f,  0.5f,  0.5f,     0.0f,  0.0f,  1.0f,    1.0f, 1.0f,
         0.5f,  0.5f,  0.5f,     0.0f,  0.0f,  1.0f,    1.0f, 1.0f,
        -0.5f,  0.5f,  0.5f,     0.0f,  0.0f,  1.0f,    0.0f, 1.0f,
        -0.5f, -0.5f,  0.5f,     0.0f,  0.0f,  1.0f,    0.0f, 0.0f,
        -0.5f,  0.5f,  0.5f,    -1.0f,  0.0f,  0.0f,    1.0f, 0.0f,
        -0.5f,  0.5f, -0.5f,    -1.0f,  0.0f,  0.0f,    1.0f, 1.0f,
        -0.5f, -0.5f, -0.5f,    -1.0f,  0.0f,  0.0f,    0.0f, 1.0f,
        -0.5f, -0.5f, -0.5f,    -1.0f,  0.0f,  0.0f,    0.0f, 1.0f,
        -0.5f, -0.5f,  0.5f,    -1.0f,  0.0f,  0.0f,    0.0f, 0.0f,
        -0.5f,  0.5f,  0.5f,    -1.0f,  0.0f,  0.0f,    1.0f, 0.0f,
         0.5f,  0.5f,  0.5f,     1.0f,  0.0f,  0.0f,    1.0f, 0.0f,
         0.5f,  0.5f, -0.5f,     1.0f,  0.0f,  0.0f,    1.0f, 1.0f,
         0.5f, -0.5f, -0.5f,     1.0f,  0.0f,  0.0f,    0.0f, 1.0f,
         0.5f, -0.5f, -0.5f,     1.0f,  0.0f,  0.0f,    0.0f, 1.0f,
         0.5f, -0.5f,  0.5f,     1.0f,  0.0f,  0.0f,    0.0f, 0.0f,
         0.5f,  0.5f,  0.5f,     1.0f,  0.0f,  0.0f,    1.0f, 0.0f,
        -0.5f, -0.5f, -0.5f,     0.0f, -1.0f,  0.0f,    0.0f, 1.0f,
         0.5f, -0.5f, -0.5f,     0.0f, -1.0f,  0.0f,    1.0f, 1.0f,
         0.5f, -0.5f,  0.5f,     0.0f, -1.0f,  0.0f,    1.0f, 0.0f,
         0.5f, -0.5f,  0.5f,     0.0f, -1.0f,  0.0f,    1.0f, 0.0f,
        -0.5f, -0.5f,  0.5f,     0.0f, -1.0f,  0.0f,    0.0f, 0.0f,
        -0.5f, -0.5f, -0.5f,     0.0f, -1.0f,  0.0f,    0.0f, 1.0f,
        -0.5f,  0.5f, -0.5f,     0.0f,  1.0f,  0.0f,    0.0f, 1.0f,
         0.5f,  0.5f, -0.5f,     0.0f,  1.0f,  0.0f,    1.0f, 1.0f,
         0.5f,  0.5f,  0.5f,     0.0f,  1.0f,  0.0f,    1.0f, 0.0f,
         0.5f,  0.5f,  0.5f,     0.0f,  1.0f,  0.0f,    1.0f, 0.0f,
        -0.5f,  0.5f,  0.5f,     0.0f,  1.0f,  0.0f,    0.0f, 0.0f,
        -0.5f,  0.5f, -0.5f,     0.0f,  1.0f,  0.0f,    0.0f, 1.0f
    };
    unsigned int VBO, VAO, lightVAO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    // normal attribute
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // generate vertex arrays for light cube
    glGenVertexArrays(1, &lightVAO);
    glBindVertexArray(lightVAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 8 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);

    //  ------------------------------------

    glEnable(GL_DEPTH_TEST);
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    int lightNumber = 3;
    Light lights[lightNumber];
    lights[0].Create(glm::vec3(0.5, 1, 1), glm::vec3(0.2), glm::vec3(0.5), glm::vec3(0.8));
    lights[1].Create(glm::vec3(1, 0.5, 1), glm::vec3(0.3), glm::vec3(0.4), glm::vec3(0.9));
    lights[2].Create(glm::vec3(1, 1, 0.5), glm::vec3(0.15), glm::vec3(0.55), glm::vec3(0.7));

    Material container;
    static float cube_ambient[] = {1, 1, 1};
    static float cube_diffuse[] = {1, 1, 1};
    static float cube_specular[] = {1, 1, 1};

    static float bg_color[] = {0, 0, 0, 1};

    // render loop
    // -----------
    while (!glfwWindowShouldClose(window))
    {
        // input
        // -----
        processInput(window);
        glfwSetCursorPosCallback(window, mouse_callback);
        glfwSetScrollCallback(window, scroll_callback);

        // feed inputs to dear imgui, start new frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();

        // render
        // ------
        // glClearColor(0.1f, 0.05f, 0.1f, 1.0f);
        glClearColor(bg_color[0], bg_color[1], bg_color[2], bg_color[3]);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        delta_time = glfwGetTime() - previous_time;
        previous_time = glfwGetTime();

        if (glfwGetTime() - previous_fps_time >= 1){
            // std::cout << fps << std::endl;
            previous_fps_time = glfwGetTime();
            fps = 0;
        }
        else {
            fps++;
        }
        
        glm::mat4 view          = glm::mat4(1.0f);
        glm::mat4 projection    = glm::mat4(1.0f);
        glm::mat4 model         = glm::mat4(1.0f);
        lights[0].pos = glm::vec3(sin(glfwGetTime()), sin(glfwGetTime()/4), cos(glfwGetTime()));
        lights[1].pos = glm::vec3(cos(glfwGetTime()), cos(glfwGetTime()/4), sin(glfwGetTime()));
        lights[2].pos = glm::vec3(sin(glfwGetTime()*2), cos(glfwGetTime()), cos(glfwGetTime()*2));
        
        // draw main cube (with transformations applied and rudimentary lighting added) ------------------------------------------------------------
        glUseProgram(ResourceManager::Shader("container"));
        glUniform3f(glGetUniformLocation(ResourceManager::Shader("container"), "viewPos"), cameraPos.x, cameraPos.y, cameraPos.z);

        for (int i = 0; i < lightNumber; i++){
            unsigned int ambientLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("light[" + std::to_string(i) +"].ambient").c_str());
            glUniform3f(ambientLocation, lights[i].ambientR(), lights[i].ambientG(), lights[i].ambientB());
            unsigned int diffuseLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("light[" + std::to_string(i) +"].diffuse").c_str());
            glUniform3f(diffuseLocation, lights[i].diffuseR(), lights[i].diffuseG(), lights[i].diffuseB());
            unsigned int specularLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("light[" + std::to_string(i) +"].specular").c_str());
            glUniform3f(specularLocation, lights[i].specularR(), lights[i].specularG(), lights[i].specularB());
            unsigned int positionLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("light[" + std::to_string(i) +"].position").c_str());
            glUniform3f(positionLocation, lights[i].pos.x, lights[i].pos.y, lights[i].pos.z);
        }

        unsigned int ambientLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("material.ambient").c_str());
        glUniform3f(ambientLocation, container.ambient.r, container.ambient.g, container.ambient.b);
        unsigned int diffuseLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("material.diffuse").c_str());
        glUniform3f(diffuseLocation, container.diffuse.r, container.diffuse.g, container.diffuse.b);
        unsigned int specularLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("material.specular").c_str());
        glUniform3f(specularLocation, container.specular.r, container.specular.g, container.specular.b);       
        unsigned int shininessLocation = glGetUniformLocation(ResourceManager::Shader("container"), std::string("material.shininess").c_str());
        glUniform1f(shininessLocation, 32.0f);

        projection = glm::perspective(glm::radians(fov), (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);
        view = glm::lookAt(cameraPos, cameraPos + cameraFront, cameraUp);
        model = glm::translate(model, cubePos);
        model = glm::rotate(model, glm::radians(cubeRotation.x), glm::vec3(1, 0, 0));
        model = glm::rotate(model, glm::radians(cubeRotation.y), glm::vec3(0, 1, 0));
        model = glm::rotate(model, glm::radians(cubeRotation.z), glm::vec3(0, 0, 1));
        // model = glm::rotate(model, (float)90, glm::vec3(sin(glfwGetTime()), cos(glfwGetTime()), cos(glfwGetTime())));

        glUniformMatrix4fv(glGetUniformLocation(ResourceManager::Shader("container"), "model"), 1, GL_FALSE, glm::value_ptr(model));
        glUniformMatrix4fv(glGetUniformLocation(ResourceManager::Shader("container"), "view"), 1, GL_FALSE, glm::value_ptr(view));
        glUniformMatrix4fv(glGetUniformLocation(ResourceManager::Shader("container"), "projection"), 1, GL_FALSE, glm::value_ptr(projection));

        glBindVertexArray(VAO);
        glDrawArrays(GL_TRIANGLES, 0, 36);

        //  ----------------------------------------------------------------------------------------------------------------------------------------

        // draw smaller light cube (with scaling and translation applied depending on lightPos) ----------------------------------------------------
        glUseProgram(ResourceManager::Shader("light"));
        
        for (int i = 0; i < lightNumber; i++){
            if (lights[i].displayLight){
            model = glm::mat4(1.0f);
            model = glm::translate(model, lights[i].pos);
            model = glm::scale(model, glm::vec3(0.2f));

            glUniformMatrix4fv(glGetUniformLocation(ResourceManager::Shader("light"), "model"), 1, GL_FALSE, glm::value_ptr(model));
            glUniformMatrix4fv(glGetUniformLocation(ResourceManager::Shader("light"), "view"), 1, GL_FALSE, glm::value_ptr(view));
            glUniformMatrix4fv(glGetUniformLocation(ResourceManager::Shader("light"), "projection"), 1, GL_FALSE, glm::value_ptr(projection));
            glUniform4f(glGetUniformLocation(ResourceManager::Shader("light"), "lightColor"), lights[i].color[0], lights[i].color[1], lights[i].color[2], 1.0f);
            glBindVertexArray(lightVAO);
            glDrawArrays(GL_TRIANGLES, 0, 36);
            }
        }
        //  ----------------------------------------------------------------------------------------------------------------------------------------

        ImGui::Begin("Cube Properties");
        ImGui::SliderFloat3("Cube Rotation", rotation, 0, 360);
        cubeRotation.x = rotation[0]; cubeRotation.y = rotation[1]; cubeRotation.z = rotation[2];
        static float translation[] = {0.0, 0.0, 0.0};
        ImGui::SliderFloat3("Cube Position", translation, -1.0, 1.0);
        cubePos.x = translation[0]; cubePos.y = translation[1]; cubePos.z = translation[2];
        ImGui::ColorEdit3("Cube Ambience", cube_ambient);
        container.ambient.r = cube_ambient[0]; container.ambient.g = cube_ambient[1]; container.ambient.b = cube_ambient[2];
        ImGui::ColorEdit3("Cube Diffuse", cube_diffuse);
        container.diffuse.r = cube_diffuse[0]; container.diffuse.g = cube_diffuse[1]; container.diffuse.b = cube_diffuse[2];
        ImGui::ColorEdit3("Cube Specular", cube_specular);
        container.specular.r = cube_specular[0]; container.specular.g = cube_specular[1]; container.specular.b = cube_specular[2];
        ImGui::SetWindowPos(ImVec2(0,0));
        ImGui::SetWindowSize(ImVec2(325,150));
        ImGui::End();

        for (int i = 1; i < lightNumber+1; i++){
            ImGui::Begin(std::string("Light " + std::to_string(i) + " Properties").c_str());
            ImGui::ColorEdit3("Light Colour", lights[i-1].color);
            ImGui::ColorEdit3("Light Ambience", lights[i-1].ambientMultiplier);
            ImGui::ColorEdit3("Light Diffuse", lights[i-1].diffuseMultiplier);
            ImGui::ColorEdit3("Light Specular", lights[i-1].specularMultiplier);
            if(ImGui::RadioButton("Display", lights[i-1].displayLight)){
                lights[i-1].displayLight = lights[i-1].displayLight ? false : true;
            }
            ImGui::SetWindowPos(ImVec2(0,i * 150));
            ImGui::SetWindowSize(ImVec2(325,150));
            ImGui::End();
        }

        ImGui::Begin("Window Properties");
        if(ImGui::RadioButton("Fullscreen", fullscreen)){
            fullscreen = (fullscreen) ? false : true;
            glfwSetWindowMonitor(window, fullscreen ? monitor : NULL, 0, 0, fullscreen ? mode->width : SCR_WIDTH, fullscreen ? mode->height : SCR_HEIGHT, GLFW_DONT_CARE);
            glfwSetWindowSize(window, fullscreen ? mode->width : SCR_WIDTH, fullscreen ? mode->height : SCR_HEIGHT);
        }
        ImGui::SliderFloat("FOV", &fov, 1.0f, 150.0f);
        ImGui::ColorEdit4("BG Color", bg_color);
        ImGui::End();

        // Render dear imgui into screen
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glFlush();
        // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
        glfwPollEvents();
    }

    // optional: de-allocate all resources once they've outlived their purpose:
    // ------------------------------------------------------------------------
    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);

    // glfw: terminate, clearing all previously allocated GLFW resources.
    // ------------------------------------------------------------------
    glfwTerminate();
    return 0;
}

// process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
// ---------------------------------------------------------------------------------------------------------
void processInput(GLFWwindow *window)
{
    const float cameraSpeed = 2.5f * delta_time; // adjust accordingly
    const float cubeSpeed = 1.0f * delta_time; // adjust accordingly
    if (ESCAPE.keyPressRelease(window)){
        glfwSetWindowShouldClose(window, true);
    }
    if (MOUSE_2.mousePressRelease(window)){
        if (cameraMouse){
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_NORMAL);
            cameraMouse = false;
        }
        else {
            glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
            cameraMouse = true;
            firstMouse = true;
        }
    }
    if (cameraMouse){
        if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
            cameraPos += cameraSpeed * cameraFront;
        if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
            cameraPos -= cameraSpeed * cameraFront;
        if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
            cameraPos -= glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
        if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
            cameraPos += glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
        if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS)
            cameraPos += cameraUp * cameraSpeed;
        if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
            cameraPos -= cameraUp * cameraSpeed;

        if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS)
            cubePos.y += cubeSpeed;
        if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS)
            cubePos.y -= cubeSpeed;
        if (glfwGetKey(window, GLFW_KEY_RIGHT) == GLFW_PRESS)
            cubePos.x += cubeSpeed;
        if (glfwGetKey(window, GLFW_KEY_LEFT) == GLFW_PRESS)
            cubePos.x -= cubeSpeed;
    }
}

void mouse_callback(GLFWwindow* window, double xpos, double ypos)
{
    if (cameraMouse){
        if (firstMouse)
        {
            lastX = xpos;
            lastY = ypos;
            firstMouse = false;
        }
        float xoffset = xpos - lastX;
        float yoffset = lastY - ypos;
        lastX = xpos;
        lastY = ypos;
        float sensitivity = 0.1f;
        xoffset *= sensitivity;
        yoffset *= sensitivity;
        yaw += xoffset;
        pitch += yoffset;
        if(pitch > 89.0f)
        pitch = 89.0f;
        if(pitch < -89.0f)
        pitch = -89.0f;
        glm::vec3 direction;
        direction.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
        direction.y = sin(glm::radians(pitch));
        direction.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
        cameraFront = glm::normalize(direction);
    }
}

void scroll_callback(GLFWwindow* window, double xoffset, double yoffset)
{
    #if defined(_WIN32)
        int multiplier = 1000;
    #endif
    #if defined(__APPLE__)
        int multiplier = 5;
    #endif
    fov -= (float)(yoffset * multiplier * delta_time);
    if (fov < 1.0f)
        fov = 1.0f;
    if (fov > 150.0f)
        fov = 150.0f;
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and 
    // height will be significantly larger than specified on retina displays.
    glViewport((width - height/0.75)/2, 0, height / 0.75, height);
}

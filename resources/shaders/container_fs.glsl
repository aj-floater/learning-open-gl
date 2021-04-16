#version 330 core
#define NR_OF_LIGHTS 3

out vec4 FragColor;

struct Material{
	vec3 ambient;
	vec3 diffuse;
	vec3 specular;

	float shininess;
};

struct Light {
	vec3 position;

	vec3 ambient;
	vec3 diffuse;
	vec3 specular;
};

uniform Material material;
uniform Light light[NR_OF_LIGHTS];

uniform vec3 viewPos;

in vec3 Normal;
in vec3 FragPos;

void main()
{
	vec3 ambient = vec3(0);
	vec3 diffuse = vec3(0);
	vec3 specular = vec3(0);
	vec3 norm = normalize(Normal);

	for (int i = 0; i < NR_OF_LIGHTS; i++){
		// calculate ambient lighting
		ambient += light[i].ambient;
		// calculate diffuse lighting
		vec3 lightDir = normalize(light[i].position - FragPos);
		float diff = max(dot(norm, lightDir), 0.0);
		diffuse += diff * light[i].diffuse;
		// calculate specular lighting
		vec3 viewDir = normalize(viewPos - FragPos);
		vec3 reflectDir = reflect(-lightDir, norm);
		float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);
		specular += spec * light[i].specular;
	}

	ambient = ambient * material.ambient;
	diffuse = diffuse * material.diffuse;
	specular = specular * material.specular;

	vec3 result = ambient + diffuse + specular;
	FragColor = vec4(result, 1.0);
}
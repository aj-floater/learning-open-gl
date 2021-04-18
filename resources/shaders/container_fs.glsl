#version 330 core
#define NR_OF_LIGHTS 3

out vec4 FragColor;

struct Material{
	sampler2D diffuse;
	sampler2D specular;

	float shininess;
};

struct Light {
	vec3 position;

	vec3 ambient;
	vec3 diffuse;
	vec3 specular;
};
struct DirectionalLight {
	vec3 direction;

	vec3 ambient;
	vec3 diffuse;
	vec3 specular;
};

uniform Material material;
uniform Light light[NR_OF_LIGHTS];
uniform DirectionalLight d_light;

uniform vec3 viewPos;

in vec3 Normal;
in vec3 FragPos;
in vec2 TexCoords;

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

	// code for directional light
	vec3 lightDir = normalize(-d_light.direction);
	float diff = max(dot(norm, lightDir), 0.0);
	diffuse += diff * d_light.diffuse;
	vec3 viewDir = normalize(viewPos - FragPos);
	vec3 reflectDir = reflect(-lightDir, norm);
	float spec = pow(max(dot(viewDir, reflectDir), 0.0), material.shininess);
	specular += spec * d_light.specular;

	ambient = ambient * 0.5 * vec3(texture(material.diffuse, TexCoords));
	diffuse = diffuse * vec3(texture(material.diffuse, TexCoords));
	specular = specular * vec3(texture(material.specular, TexCoords));

	vec3 result = ambient + diffuse + specular;
	FragColor = vec4(result, 1.0);
}
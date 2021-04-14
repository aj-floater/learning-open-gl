#version 330 core
#define NR_OF_LIGHTS 3

out vec4 FragColor;

uniform vec3 objectColor;
uniform vec3 viewPos;
uniform vec3 lightColor[NR_OF_LIGHTS];
uniform vec3 lightPos[NR_OF_LIGHTS];

in vec3 Normal;
in vec3 FragPos;

float ambientStrength = 0.075;
float specularStrength = 0.5;

void main()
{
	vec3 ambient = vec3(0);
	vec3 diffuse = vec3(0);
	vec3 specular = vec3(0);
	vec3 norm = normalize(Normal);

	for (int i = 0; i < NR_OF_LIGHTS; i++){
		// calculate ambient lighting
		ambient += lightColor[i];
		// calculate diffuse lighting
		vec3 lightDir = normalize(lightPos[i] - FragPos);
		float diff = max(dot(norm, lightDir), 0.0);
		diffuse += diff * lightColor[i];
		// calculate specular lighting
		vec3 viewDir = normalize(viewPos - FragPos);
		vec3 reflectDir = reflect(-lightDir, norm);
		float spec = pow(max(dot(viewDir, reflectDir), 0.0), 256);
		specular += spec * lightColor[i];
	}

	ambient = ambient * ambientStrength;
	specular = specular * specularStrength;

	vec3 result = objectColor * (ambient + diffuse + specular);
	FragColor = vec4(result, 1.0);
}
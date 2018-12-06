#version 330 core
out vec4 FragColor;  
in vec3 ourColor;
in vec2 TexCoord;
in vec2 TexCoord2;

uniform sampler2D texture1;
uniform sampler2D texture2;

void main()
{
    FragColor = mix(texture(texture1, TexCoord2), texture(texture2, TexCoord), 0.5);
}
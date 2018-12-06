#version 330 core
in vec3 aPos;   // 位置变量的属性位置值为 0 
in vec3 aColor; // 颜色变量的属性位置值为 1
in vec2 aTexCoord;
in vec2 aTexCoord2;

out vec3 ourColor; // 向片段着色器输出一个颜色
out vec2 TexCoord;
out vec2 TexCoord2;
uniform vec4 ourPos;
uniform mat4 transform;

void main()
{
    //gl_Position = vec4(aPos.x+ourPos.x,aPos.y,aPos.z,1.0);
	gl_Position = transform * vec4(aPos, 1.0f);
    ourColor = aColor; // 将ourColor设置为我们从顶点数据那里得到的输入颜色
	TexCoord = vec2(aTexCoord.x, aTexCoord.y);
	TexCoord2 = vec2(aTexCoord2.x, aTexCoord2.y);
}
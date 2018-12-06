#version 330 core
in vec3 aPos;   // λ�ñ���������λ��ֵΪ 0 
in vec3 aColor; // ��ɫ����������λ��ֵΪ 1
in vec2 aTexCoord;
in vec2 aTexCoord2;

out vec3 ourColor; // ��Ƭ����ɫ�����һ����ɫ
out vec2 TexCoord;
out vec2 TexCoord2;
uniform vec4 ourPos;
uniform mat4 transform;

void main()
{
    //gl_Position = vec4(aPos.x+ourPos.x,aPos.y,aPos.z,1.0);
	gl_Position = transform * vec4(aPos, 1.0f);
    ourColor = aColor; // ��ourColor����Ϊ���ǴӶ�����������õ���������ɫ
	TexCoord = vec2(aTexCoord.x, aTexCoord.y);
	TexCoord2 = vec2(aTexCoord2.x, aTexCoord2.y);
}
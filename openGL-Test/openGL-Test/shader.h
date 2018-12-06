#ifndef SHADER_H
#define SHADER_H

#include <glad/glad.h>; // ����glad����ȡ���еı���OpenGLͷ�ļ�
#include <GLFW/glfw3.h>

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>


class Shader
{
public:
	// ����ID
	unsigned int ID;

	// ��������ȡ��������ɫ��
	Shader(const GLchar* vertexPath, const GLchar* fragmentPath);
	// ʹ��/�������
	void use();
	// uniform���ߺ���
	void setBool(const std::string &name, bool value) const;
	void setInt(const std::string &name, int value) const;
	void setFloat(const std::string &name, float value) const;
	void set4f(const std::string &name, float value1, float value2, float value3, float value4) const;
};

#endif#pragma once

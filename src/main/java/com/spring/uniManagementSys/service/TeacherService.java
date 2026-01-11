package com.spring.uniManagementSys.service;

import java.util.List;

import com.spring.uniManagementSys.entity.Teacher;

public interface TeacherService {
	
	public int addTeacher(Teacher teacher);
	public List<Teacher> getAllTeachers();
	public int deleteTeacher(Long id);
	public Teacher getTeacherById(long id);
	public int updateTeacher(Teacher teacher);

}

package com.spring.uniManagementSys.service;

import java.util.List;

import com.spring.uniManagementSys.entity.Course;

public interface CourseService {
	
	// list of all methods required for a course 
	public int createCourse(Course course);
	public List<Course> getAllCourses();
	public Course searchCourseById(Long id);
	public int updateCourse(Course course);
	public int deleteCourse(Long id);
	

}

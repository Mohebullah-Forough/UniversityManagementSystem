package com.spring.uniManagementSys.entity;

import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="course")
public class Course {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long courseId;
	private String courseName;
	private String courseCode;
	private String courseDeparment;
	private String courseSemester;
	// creating a variable to assign a course to a teacher
	 @ManyToMany(mappedBy = "courses")
	    private Set<Teacher> teachers = new HashSet<>();
	
	
	public Set<Teacher> getTeachers() {
		return teachers;
	}
	public void setTeachers(Set<Teacher> teachers) {
		this.teachers = teachers;
	}
	public void setCourseId(long courseId) {
		this.courseId = courseId;
	}
	public long getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getCourseDeparment() {
		return courseDeparment;
	}
	public void setCourseDeparment(String courseDeparment) {
		this.courseDeparment = courseDeparment;
	}
	public String getCourseSemester() {
		return courseSemester;
	}
	public void setCourseSemester(String courseSemester) {
		this.courseSemester = courseSemester;
	}
	
	
	

}

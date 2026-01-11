package com.spring.uniManagementSys.entity;


import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="teacher")
public class Teacher {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long teacherId;
	private String teacherName;
	private String teacherLastName;
	private String teacherEmail;
	private String teacherJoinDate;
	private String teacherPhone;
	private String teacherGender;
	private String teacherDepartment;
	private String teacherDesignation;
	private String teacherQualification;
	private String teacherExperience;
	// creating variable to assign a course to a teacher
	@ManyToMany
    @JoinTable(
        name = "course_teacher",
        joinColumns = @JoinColumn(name = "teacher_id"),
        inverseJoinColumns = @JoinColumn(name = "course_id")
    )
    private Set<Course> courses = new HashSet<>();
	
	
	
	public Set<Course> getCourses() {
		return courses;
	}
	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}
	public long getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(long teacherId) {
		this.teacherId = teacherId;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getTeacherLastName() {
		return teacherLastName;
	}
	public void setTeacherLastName(String teacherLastName) {
		this.teacherLastName = teacherLastName;
	}
	public String getTeacherEmail() {
		return teacherEmail;
	}
	public void setTeacherEmail(String teacherEmail) {
		this.teacherEmail = teacherEmail;
	}
	public String getTeacherPhone() {
		return teacherPhone;
	}
	public void setTeacherPhone(String teacherPhone) {
		this.teacherPhone = teacherPhone;
	}
	public String getTeacherGender() {
		return teacherGender;
	}
	public void setTeacherGender(String teacherGender) {
		this.teacherGender = teacherGender;
	}
	public String getTeacherJoinDate() {
		return teacherJoinDate;
	}
	public void setTeacherJoinDate(String teacherJoinDate) {
		this.teacherJoinDate = teacherJoinDate;
	}
	public String getTeacherDepartment() {
		return teacherDepartment;
	}
	public void setTeacherDepartment(String teacherDepartment) {
		this.teacherDepartment = teacherDepartment;
	}
	public String getTeacherDesignation() {
		return teacherDesignation;
	}
	public void setTeacherDesignation(String teacherDesignation) {
		this.teacherDesignation = teacherDesignation;
	}
	public String getTeacherQualification() {
		return teacherQualification;
	}
	public void setTeacherQualification(String teacherQualification) {
		this.teacherQualification = teacherQualification;
	}
	public String getTeacherExperience() {
		return teacherExperience;
	}
	public void setTeacherExperience(String teacherExperience) {
		this.teacherExperience = teacherExperience;
	}
	
	
	

}

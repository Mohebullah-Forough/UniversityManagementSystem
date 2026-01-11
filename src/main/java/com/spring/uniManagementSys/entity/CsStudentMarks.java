package com.spring.uniManagementSys.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;

@Entity
public class CsStudentMarks {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private double javaProg;
	private double mathematics;
	private double physics;
	private double dataStructure;
	private double networking;
	private double operatingSystem;
	private double algorithm;
	private String semester;
	private String year;

	private double total = 0;
	private String result = null;
	private String grade;
	private double average;

	@ManyToOne
	@JoinColumn(name = "student_id") // foreign key in CsStudentMarks table
	private Student student;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getJavaProg() {
		return javaProg;
	}

	public void setJavaProg(double javaProg) {
		//total = total + javaProg;
		this.javaProg = javaProg;
	}

	public double getMathematics() {
		return mathematics;
	}

	public void setMathematics(double mathematics) {
		//total = total + mathematics;
		this.mathematics = mathematics;
	}

	public double getPhysics() {
		return physics;
	}

	public void setPhysics(double physics) {
		//total = total + physics;
		this.physics = physics;
	}

	public double getDataStructure() {
		return dataStructure;
	}

	public void setDataStructure(double dataStructure) {
		//total = total + dataStructure;
		this.dataStructure = dataStructure;
	}

	public double getNetworking() {
		return networking;
	}

	public void setNetworking(double networking) {
		//total = total + networking;
		this.networking = networking;
	}

	public double getOperatingSystem() {
		return operatingSystem;
	}

	public void setOperatingSystem(double operatingSystem) {
		//total = total + operatingSystem;
		this.operatingSystem = operatingSystem;
	}

	public double getAlgorithm() {
		return algorithm;
	}

	public void setAlgorithm(double algorithm) {
		//total = total + algorithm;
		this.algorithm = algorithm;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	// calculating total, grade and result
	@PrePersist
	@PreUpdate
	private void calculateResults() {
		// Calculate total
		this.total = javaProg + mathematics + physics + dataStructure + networking + operatingSystem + algorithm;

		// Calculate average
		this.average = Math.round((total / 7.0) * 10.0) / 10.0;

		// Set grade
		if (average >= 95)
			this.grade = "A+";
		else if (average >= 85)
			this.grade = "A";
		else if (average >= 75)
			this.grade = "B";
		else if (average >= 65)
			this.grade = "C";
		else if (average >= 55)
			this.grade = "D";
		else
			this.grade = "F";

		// Set result (pass/fail)
		this.result = (average >= 55) ? "Pass" : "Fail";
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public double getAverage() {
		return average;
	}

	public void setAverage(double average) {
		this.average = average;
	}
	
	

}
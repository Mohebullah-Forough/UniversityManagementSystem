package com.spring.uniManagementSys.service;



import java.util.List;

import com.spring.uniManagementSys.entity.CsStudentMarks;
import com.spring.uniManagementSys.entity.Student;

public interface StudentService {
	
	// list of all methods for student management
	public int createStudent(Student student);
	public Student searchStudentById(long id);
	public int saveCsStudentMarks(CsStudentMarks csStudentMarks,long id);
	public int updateStudent(Student student);
	public int deleteStudent(Long id);
	public List<Student> getAllStudents();
	public List<CsStudentMarks> getCsStudentMarks(Long student_id);
	
	

}

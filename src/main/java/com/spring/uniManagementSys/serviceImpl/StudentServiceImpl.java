package com.spring.uniManagementSys.serviceImpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.uniManagementSys.entity.CsStudentMarks;
import com.spring.uniManagementSys.entity.Student;
import com.spring.uniManagementSys.repository.CsStudentMarksRepository;
import com.spring.uniManagementSys.repository.StudentRepository;
import com.spring.uniManagementSys.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	public StudentRepository studentRepository;
	@Autowired
	public CsStudentMarksRepository csStudentRepository;
	@Autowired
	public CsStudentMarksRepository csStudentMarksRepository;
	
	
	// =======================================================
	/**
	 * below is the list of all method implementation
	 * that is needed for student operations 
	 * like: (add, search, update, edit and delete student)
	 */
	//========================================================
	@Override
	public int createStudent(Student student) {
		studentRepository.save(student);
		return 0;
	}
	
	@Override
	public Student searchStudentById(long id) {
		Student studentData = studentRepository.findById(id)
			    .orElseThrow(() -> new RuntimeException("Student not found"));
		return studentData;
	}

	public int saveCsStudentMarks(CsStudentMarks csStudentMarks, long id) {
		
	    // 1. Fetching the student entity
	    Student student = studentRepository.findById(id)
	        .orElseThrow(() -> new RuntimeException("Student not found"));

	    // 2. Setting student in marks object
	    csStudentMarks.setStudent(student);

	    // 3. Saving marks
	    csStudentRepository.save(csStudentMarks);

	    return 1; // success
	}
	
	
	@Override
	public List<CsStudentMarks> getCsStudentMarks(Long studentId) {
		return csStudentMarksRepository.findByStudentId(studentId);
	}
	
	@Override
	public int updateStudent(Student student)
	{
		studentRepository.save(student);
		return 0;// success
		
	}
	
	@Override
	public int deleteStudent(Long id) {
		if (!studentRepository.existsById(id)) {
            throw new RuntimeException("Student not found");
        }
        studentRepository.deleteById(id);
		return 0;
	}


	@Override
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	
	
	//==============================
	/**
	 * below is list of all methods 
	 * for course management 
	 * like (add, update, delete and view course)
	 */
	//==============================
	

	


	
	
	
}

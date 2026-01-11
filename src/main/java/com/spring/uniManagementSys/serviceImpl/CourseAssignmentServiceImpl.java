package com.spring.uniManagementSys.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.uniManagementSys.entity.Course;
import com.spring.uniManagementSys.entity.Teacher;
import com.spring.uniManagementSys.repository.CourseRepository;
import com.spring.uniManagementSys.repository.TeacherRepository;
import com.spring.uniManagementSys.service.CourseAssignmentService;


@Service
@Transactional
public class CourseAssignmentServiceImpl implements CourseAssignmentService{

	  @Autowired
	    private TeacherRepository teacherRepo;

	    @Autowired
	    private CourseRepository courseRepo;
	
	public void assignCourseToTeacher(Long teacherId, Long courseId) {
		 Teacher teacher = teacherRepo.findById(teacherId)
	                .orElseThrow(() -> new RuntimeException("Teacher not found"));

	        Course course = courseRepo.findById(courseId)
	                .orElseThrow(() -> new RuntimeException("Course not found"));

	        teacher.getCourses().add(course);
	        teacherRepo.save(teacher);
		
	}

}

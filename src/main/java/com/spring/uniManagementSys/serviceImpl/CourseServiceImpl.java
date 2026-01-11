package com.spring.uniManagementSys.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.uniManagementSys.entity.Course;
import com.spring.uniManagementSys.repository.CourseRepository;
import com.spring.uniManagementSys.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	CourseRepository courseRepository;

	@Override
	public int createCourse(Course course) {
		courseRepository.save(course);
		return 0;
	}

	@Override
	public List<Course> getAllCourses() {
		List<Course> courses = courseRepository.findAll();
		return courses;
	}

	@Override
	public Course searchCourseById(Long id) {
		Course courseData = courseRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("Course not found"));
		return courseData;
	}

	@Override
	public int updateCourse(Course course) {
		courseRepository.save(course);
		return 0;
	}

	@Override
	public int deleteCourse(Long id) {
		if (!courseRepository.existsById(id)) {
            throw new RuntimeException("Course not found");
        }
		courseRepository.deleteById(id);
		return 0;
	}

	
}

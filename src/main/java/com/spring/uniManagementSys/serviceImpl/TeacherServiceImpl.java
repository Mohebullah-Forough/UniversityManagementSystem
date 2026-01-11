package com.spring.uniManagementSys.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.uniManagementSys.entity.Teacher;
import com.spring.uniManagementSys.repository.TeacherRepository;
import com.spring.uniManagementSys.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	TeacherRepository teacherRepository;

	@Override
	public int addTeacher(Teacher teacher) {
		teacherRepository.save(teacher);
		return 1; // success
	}

	@Override
	public List<Teacher> getAllTeachers() {
		List<Teacher> listOfTeachers = teacherRepository.findAll();
		return listOfTeachers;
	}

	@Override
	public int deleteTeacher(Long id) {
		if (!teacherRepository.existsById(id)) {
			throw new RuntimeException("Teacher not found");
		}
		teacherRepository.deleteById(id);
		return 1; // success
	}

	@Override
	public Teacher getTeacherById(long id) {
		Teacher teacher = teacherRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("Teacher not found"));
		return teacher;
	}

	@Override
	public int updateTeacher(Teacher teacher) {
		teacherRepository.save(teacher);
		return 1;//success
	}
	

}

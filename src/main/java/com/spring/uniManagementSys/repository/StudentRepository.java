package com.spring.uniManagementSys.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.uniManagementSys.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
	
}

package com.spring.uniManagementSys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.uniManagementSys.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long>{

}

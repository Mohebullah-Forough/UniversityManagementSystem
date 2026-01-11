package com.spring.uniManagementSys.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.uniManagementSys.entity.CsStudentMarks;

public interface CsStudentMarksRepository extends JpaRepository<CsStudentMarks, Long> {
	List<CsStudentMarks> findByStudentId(Long studentId);

}

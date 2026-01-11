package com.spring.uniManagementSys.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.spring.uniManagementSys.entity.Event;

public interface EventRepository extends JpaRepository<Event, Long>{

}

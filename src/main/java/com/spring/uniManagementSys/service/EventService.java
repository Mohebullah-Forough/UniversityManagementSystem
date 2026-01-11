package com.spring.uniManagementSys.service;

import java.util.List;

import com.spring.uniManagementSys.entity.Event;

public interface EventService {
	
	public int createEvent(Event event);
	public List<Event> getAllEvents();
	public int deleteEvent(long id);
	public Event getEventById(long id);
	public int updateEvent(Event event);

}

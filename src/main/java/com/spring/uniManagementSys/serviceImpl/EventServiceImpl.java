package com.spring.uniManagementSys.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.uniManagementSys.entity.Event;
import com.spring.uniManagementSys.repository.EventRepository;
import com.spring.uniManagementSys.service.EventService;

@Service
public class EventServiceImpl implements EventService{

	@Autowired
	public EventRepository eventRepository;
	
	public int createEvent(Event event) {
		eventRepository.save(event);
		return 1; // success
	}

	@Override
	public List<Event> getAllEvents() {
		List<Event> eventList = eventRepository.findAll();
		return eventList;
	}

	@Override
	public int deleteEvent(long id) {
		if(!eventRepository.existsById(id)){
            throw new RuntimeException("Event not found");
        }
		eventRepository.deleteById(id);
		return 0;
	}

	@Override
	public Event getEventById(long id) {
		Event event = eventRepository.findById(id)
			    .orElseThrow(() -> new RuntimeException("Event not found"));
		return event;
	}

	@Override
	public int updateEvent(Event event) {
		eventRepository.save(event);
		return 1; //success
	}
	
	
	

}

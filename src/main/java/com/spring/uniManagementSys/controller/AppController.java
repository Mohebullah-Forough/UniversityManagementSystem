package com.spring.uniManagementSys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {
	
	@RequestMapping("/")
	public String indexPage(Model md)
	{
		md.addAttribute("title","Home");
		return "index";
	}
	
	@GetMapping("/events")
	public String eventsPage(Model md) {
		md.addAttribute("title","Events");
		return "events";
	}
	
	@GetMapping("/results")
	public String resultPage(Model md)
	{
		md.addAttribute("title","Results");
		
		return "results";
	}
	

}
package com.spring.uniManagementSys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@GetMapping("/adminLogin")
	public String loginPage(Model md)
	{
		md.addAttribute("title","Admin Login");
		
		return "login/adminLogin/adminLogin";
		
	}
	
	@GetMapping("/hrLogin")
	public String hrLoginPage(Model md)
	{
		md.addAttribute("title","HR Login");
		
		return "login/hrLogin/hrLogin";
		
	}
	
	@GetMapping("/staffLogin")
	public String staffLoginPage(Model md)
	{
		md.addAttribute("title","Staff Login");
		
		return "login/staffLogin/staffLogin";
		
	}

	@GetMapping("/teacherLogin")
	public String teacherLoginPage(Model md)
	{
		md.addAttribute("title","Teacher Login");
		
		return "login/teacherLogin/teacherLogin";
		
	}
}

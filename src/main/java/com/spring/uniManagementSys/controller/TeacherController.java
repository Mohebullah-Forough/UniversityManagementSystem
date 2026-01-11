package com.spring.uniManagementSys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	@GetMapping("/teachersList")
	public String teacherPage(Model md) {
		md.addAttribute("title","Teacher");
		return "teacher/teachers";
	}
	
	@GetMapping("/teacherProfile")
	public String teacherProfilePage(Model md)
	{
		md.addAttribute("title","Teacher Dashboard");
		return "teacher/teacherProfile";
	}
	
	@GetMapping("/updatePassword")
	public String updatePasswordPage(Model md)
	{
		md.addAttribute("title","Update Password");
		return "login/teacherLogin/updatePassword";
	}
	
	@GetMapping("/courses")
	public String coursesPage(Model md)
	{
		md.addAttribute("title","Courses");
		return "teacher/courses";
	}
	
	@GetMapping("/attendance")
	public String attendancePage(Model md)
	{
		md.addAttribute("title","Attenance sheet");
		return "teacher/teacherAttendance";
	}


}

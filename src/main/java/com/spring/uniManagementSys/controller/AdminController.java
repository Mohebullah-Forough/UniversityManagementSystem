package com.spring.uniManagementSys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping("/admin")
	public String adminLoginPage(Model md) {
		
		md.addAttribute("title","Admin Login");
		return "admin/adminLogin";
	}
	
	@GetMapping("/adminProfile")
	public String adminProfilePage(Model md)
	{
		md.addAttribute("title","Admin Profile");
		return "admin/adminProfile";
	}
	
	@GetMapping("/updatePassword")
	public String updatePasswordPage(Model md)
	{
		md.addAttribute("title","Update Admin Password");
		return "login/adminLogin/updatePassword";
	}

}

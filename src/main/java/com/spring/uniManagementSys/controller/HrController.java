package com.spring.uniManagementSys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hr")
public class HrController {
	
	@GetMapping("/hrProfile")
	public String hrProfilePage(Model md)
	{
		md.addAttribute("title","HR Profile");
		return "hr/hrProfile";
	}
	
	@GetMapping("/updatePassword")
	public String updatePasswordPage(Model md)
	{
		md.addAttribute("title","Update Password");
		return "login/hrLogin/updatePassword";
	}

}

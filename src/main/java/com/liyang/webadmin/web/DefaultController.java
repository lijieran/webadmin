package com.liyang.webadmin.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	
	@RequestMapping("login")
	public String login() {
		System.out.println("=====");
		return "system/login";
	}
	
	@RequestMapping("success")
	public String success() {
		System.out.println("=====");
		return "system/success";
	}

	@RequestMapping("home")
	public String home() {
		System.out.println("=====");
		return "system/home";
	}
	
	@RequestMapping({"index",""})
	public String index() {
		System.out.println("=index===");
		return "index";
	}
}

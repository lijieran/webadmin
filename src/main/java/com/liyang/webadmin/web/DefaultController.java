package com.liyang.webadmin.web;


import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DefaultController {
	
	private String adminPath = "home";
	
	@RequestMapping("login")
	public String login() {
		System.out.println("=====");
		
		Subject subject = SecurityUtils.getSubject();
		Object principal = (Object) subject.getPrincipal();

		// 如果已经登录，则跳转到管理首页
		if (principal != null) {
			return "redirect:" + adminPath;
		}
		
		return "system/login";
	}
	
	@RequestMapping("success")
	public String success() {
		System.out.println("=====");
		return "system/success";
	}

	@RequestMapping({"home",""})
	@RequiresPermissions("home:view")
	public String home(HttpServletRequest request) {
		System.out.println("=====");
		        
        
		return "system/home";
	}
	
}

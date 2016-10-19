package com.liyang.webadmin.web.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("user")
public class UserController {
	
	public String index() {
		return "sys/userIndex";
	}

}

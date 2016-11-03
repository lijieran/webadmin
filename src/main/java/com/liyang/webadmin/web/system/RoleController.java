package com.liyang.webadmin.web.system;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("role")
public class RoleController {
	
	
	private static Logger logger = Logger.getLogger(RoleController.class);
	
	@RequestMapping(value = {"index"})
	public String index() {
		logger.info("===========");
		return "system/roleIndex";
	}

}

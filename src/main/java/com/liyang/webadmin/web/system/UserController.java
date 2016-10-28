package com.liyang.webadmin.web.system;

import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("user")
public class UserController {
	
	private static Logger logger = Logger.getLogger(UserController.class);
	
	
	@RequiresPermissions("system:user:view")
	@RequestMapping(value = {"index"})
	public String index() {
		logger.info("===========");
		return "system/userIndex";
	}

}

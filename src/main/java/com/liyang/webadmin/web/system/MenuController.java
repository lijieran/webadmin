package com.liyang.webadmin.web.system;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("menu")
public class MenuController {
	
	private static Logger logger = Logger.getLogger(MenuController.class);
	
	@RequestMapping(value = {"index"})
	public String index() {
		logger.info("===========");
		return "system/menuIndex";
	}
	

	@RequestMapping(value = {"menuAdd"})
	public String userAdd() {
		return "system/menuAdd";
	}
	

}

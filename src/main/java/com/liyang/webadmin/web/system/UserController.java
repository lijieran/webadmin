package com.liyang.webadmin.web.system;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liyang.webadmin.service.SystemService;



@Controller
@RequestMapping("user")
public class UserController {
	
	private static Logger logger = Logger.getLogger(UserController.class);
	
	@Resource
	private SystemService systemService;
	
	
	@RequiresPermissions("system:user:view")
	@RequestMapping(value = {"index"})
	public String index() {
		logger.info("===========");
		return "system/userIndex";
	}
	
	
	@RequiresPermissions("system:user:view")
	@ResponseBody
	@RequestMapping(value = {"list", ""})
	public String list( HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String res = systemService.findUsers();
		return res;
	}
	
	

}

package com.liyang.webadmin.web.system;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liyang.webadmin.entity.Menu;
import com.liyang.webadmin.entity.User;
import com.liyang.webadmin.service.SystemService;

@Controller
@RequestMapping("menu")
public class MenuController {
	
	private static Logger logger = Logger.getLogger(MenuController.class);
	
	@Resource
	private SystemService systemService;
	
	@RequestMapping(value = {"index"})
	public String index() {
		logger.info("===========");
		return "system/menuIndex";
	}
	

	@RequestMapping(value = {"menuAdd"})
	public String userAdd() {
		return "system/menuAdd";
	}
	
	@ResponseBody
	@RequestMapping(value = {"list", ""})
	public String list( HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String res = systemService.findMenus();
		return res;
	}
	
	
	@RequestMapping(value = {"save"})
	public String save(Menu menu, Model model) {
		
		logger.info("菜单信息：" + menu.getName());
		
	    
	   
		
		return "redirect:"  + "/menu/index";
	}

}

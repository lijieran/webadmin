package com.liyang.webadmin.web.system;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.liyang.webadmin.entity.User;
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
	
	
	@ResponseBody
	@RequestMapping(value = {"list", ""})
	public String list( HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String res = systemService.findUsers();
		return res;
	}
	
	
	@RequestMapping(value = {"userAdd"})
	public String userAdd() {
		return "system/userAdd";
	}
	
	@RequestMapping(value = {"save"})
	public String save(User user, Model model) {
		
		logger.info("用户信息：" + user.getUsername());
		
		 if(user.getId()==null || user.getName()==null || user.getPassword()==null) {
			 model.addAttribute("error", "非法请求");
			 return "system/userAdd";
		 }
		
	    systemService.saveUser(user);
	    
	   
		
		return "redirect:"  + "/user/index";
	}
	
	/**
	 * 验证登录名是否有效
	 * @param oldLoginName
	 * @param loginName
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "checkLoginName")
	public String checkLoginName(String username) {
		logger.info("用户名："+username);
		if (username !=null && !systemService.checkLoginName(username)) {
			return "false";
		} 
		return "true";
	}

	
	

}

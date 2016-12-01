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

import com.liyang.webadmin.entity.Menu;
import com.liyang.webadmin.service.AuthenticationService;
import com.liyang.webadmin.service.SystemService;

@Controller
@RequestMapping("menu")
public class MenuController {
	
	private static Logger logger = Logger.getLogger(MenuController.class);
	
	@Resource
	private SystemService systemService;
	
	@Resource
	private AuthenticationService authenticationService;
	
	@RequiresPermissions("system:menu:view")
	@RequestMapping(value = {"index"})
	public String index() {
		logger.info("===========");
		return "system/menuIndex";
	}
	

	@RequestMapping(value = {"menuAdd"})
	public String menuAdd() {
		return "system/menuAdd";
	}
	
	@RequestMapping(value = {"menuUpdate"})
	public String menuUpdate(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		Menu entity = systemService.findMenuById(id);
		model.addAttribute("entity", entity);
		return "system/menuUpdate";
	}
	
	@ResponseBody
	@RequestMapping(value = {"list", ""})
	public String list( HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String res = systemService.findMenus();
		return res;
	}
	
	@ResponseBody
	@RequestMapping(value = {"combotree", ""})
	public String combotree( HttpServletRequest request, HttpServletResponse response, Model model) {
		
		String res = authenticationService.combotreeMenu();
		return res;
	}
	
	
	@RequestMapping(value = {"save"})
	public String save(Menu entity, Model model, HttpServletRequest request) {
	   
		return this.saveOrUpdate(entity, model, request, "add");
	}
	
	
	@RequestMapping(value="update")
	public String update(Menu entity, Model model, HttpServletRequest request) {
		
		return this.saveOrUpdate(entity, model, request, "update");
	}
	
	private String saveOrUpdate(Menu entity, Model model, HttpServletRequest request, String type) {
		try {
			if( entity.getName()==null) {
				model.addAttribute("error", "非法请求");
				logger.info("菜单添加非法请求");
				if(type.equals("add")) return "system/menuAdd";
				if(type.equals("update")) return "system/menuUpdate";
			}
			
			String  isShow = request.getParameter("isShow");
			
			if("on".equals(isShow)) {
				entity.setIsShow("1");
			} else {
				entity.setIsShow("0");
			}
			logger.info("菜单信息：" + entity.getName() +" , " + request.getParameter("isShow"));
			
			if(type.equals("add")) systemService.saveMenu(entity);
			if(type.equals("update")) systemService.updateMenu(entity);
		   
		} catch (Exception e) {
			logger.error(e,e);
		}
		return "redirect:"  + "/menu/index";
	}
	
	@RequestMapping(value = {"delete"})
	public String delete(HttpServletRequest request) {
		String id = request.getParameter("id");
		logger.info("menu==delete===="+id);
		systemService.deleteMenu(id);
		return "redirect:"  + "/menu/index";
	}

}

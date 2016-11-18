package com.liyang.webadmin.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.liyang.webadmin.entity.Menu;
import com.liyang.webadmin.entity.User;
import com.liyang.webadmin.persistence.mapper.MenuMapper;
import com.liyang.webadmin.persistence.mapper.UserMapper;
import com.liyang.webadmin.service.SystemService;

@Service
@SuppressWarnings({ "rawtypes", "unchecked" })
public class SystemServiceImpl implements SystemService{
	
	private static Logger logger = Logger.getLogger(SystemServiceImpl.class);
	
	@Resource
	private UserMapper userMapper;
	
	@Resource
	private MenuMapper menuMapper;

	public String findUsers() {
        List<User> users = userMapper.findUsers();
        Gson gson = new Gson();
        String json = gson.toJson(users);
		return json;
	}

	public boolean checkLoginName(String username) {
		User user = userMapper.findByUsername(username);
		if(user!=null) return false;
		return true;
	}

	public void saveUser(User user) {
		user.setPassword(DigestUtils.md5Hex(user.getPassword()));
		userMapper.save(user);
		
	}

	public String findMenus() {
		List<Menu> menus = menuMapper.findMenus();
        Gson gson = new Gson();
        String json = gson.toJson(menus);
		return json;
	}

	public void saveMenu(Menu entity) {
		menuMapper.save(entity);
	}

	public void deleteMenu(String id) {
		menuMapper.delete(id);
		
	}

	public String combotreeMenu() {
		try {
			
			Menu root = menuMapper.findRoot();
			
			List list = new ArrayList();
			
			Map rootMap = new HashMap();
			rootMap.put("id", root.getId());
			rootMap.put("text", root.getName());
			
			rootMap.put("children", this.findChildrenMenus(root.getId()));
			
			list.add(rootMap);
			
			Gson gson = new Gson( );
			
			
			return gson.toJson(list);
			
		} catch (Exception e) {
			logger.error(e,e);
		}
		return null;
	}
	
	
	private List findChildrenMenus(String id) {
		List list = new ArrayList();
		try {
			
			List<Menu> children = menuMapper.findChildren(id);
			
			for(Menu menu : children) {
				Map map = new HashMap();
				if("1".equals(menu.getIsShow())) {
					map.put("id", menu.getId());
					map.put("text", menu.getName());
					map.put("children", this.findChildrenMenus(menu.getId()));
					list.add(map);
				}
				
			}
		} catch (Exception e) {
			logger.error(e,e);
		}
		return list;
	}

	public Menu findMenuById(String id) {
		return menuMapper.findById(id);
	}

	public void updateMenu(Menu entity) {
		menuMapper.update(entity);
		
	}

	public String generateSidebar(String uri) {
		List<Menu> menus = menuMapper.findChildren("1");
		
		StringBuffer buffer = new StringBuffer();
		
		
		for(Menu entity:menus) {
			this.formatSidebar(entity, buffer, uri);
						
		}
		return buffer.toString();
	}

	private void formatSidebar(Menu entity, StringBuffer buffer, String uri) {
		try {
			List<Menu> children = menuMapper.findChildren(entity.getId());
			
			String titleTag = "<li>";
			
			if(children.size()==0) {
				
				//如果是单个菜单的情况
				if(uri.equalsIgnoreCase(entity.getHref())) titleTag = "<li class=\"active\">";
				
				buffer.append(titleTag);
				  buffer.append("<a href=\"##ROOT##"+entity.getHref()+"\">");
				    buffer.append("<i class=\"icon-dashboard\"></i>");
				    buffer.append("<span class=\"menu-text\"> "+entity.getName()+" </span>");
				  buffer.append("</a>");
				buffer.append("</li>");
				
			} else {
				
				boolean active = this.validateActive(children, uri);
				
				  if(active) buffer.append("<li class=\"active open\">");
				  else buffer.append("<li>");
				  
				  buffer.append("<a href=\"#\" class=\"dropdown-toggle\">");
				  buffer.append("<i class=\"icon-desktop\"></i>");
				  buffer.append("<span class=\"menu-text\"> "+entity.getName()+" </span>");
				  buffer.append("<b class=\"arrow icon-angle-down\"></b>");
				  buffer.append("</a>");
				  
				  buffer.append("<ul class=\"submenu\">");
				  
				  for(Menu child:children) {
					  
					  if(uri.equals(child.getHref())) {
						  titleTag = "<li class=\"active\">";
					  } else {
						  titleTag = "<li>";
					  }
					  
					  buffer.append(titleTag);
					  buffer.append("<a href=\"##ROOT##"+child.getHref()+"\">");
					  buffer.append("<i class=\"icon-double-angle-right\"></i>");
					  buffer.append(child.getName());
					  buffer.append("</a>");
					  buffer.append("</li>");
				  }
				  
				  buffer.append("</ul>");
				buffer.append("</li>");
				
				
			}

		} catch (Exception e) {
			logger.error(e,e);
		}
		
	}

	private boolean validateActive(List<Menu> children, String uri) {
		for(Menu entity:children) {
			if(uri.equals(entity.getHref())) return true;
		}
		return false;
	}



}

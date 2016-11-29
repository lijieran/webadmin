package com.liyang.webadmin.service;

import java.util.List;

import com.liyang.webadmin.entity.Menu;
import com.liyang.webadmin.entity.Role;
import com.liyang.webadmin.entity.User;

public interface SystemService {
	
	public String findUsers();
	
	public boolean checkLoginName(String username);
	
	public void saveUser(User entity);
	
	public String findMenus();
	
	public void saveMenu(Menu entity);
	
	public void deleteMenu(String id);
	
	public String combotreeMenu();
	
	public String ztreeMenu();
	
	public String ztreeMenu(String roleid);
	
	public Menu findMenuById(String id);
	
	public void updateMenu(Menu entity);
	
	public String generateSidebar(String uri);
	
	public void saveRole(Role entity);
	public void updateRole(Role entity);
	
	public String findRoles();
	
	public Role findRoleById(String id);

}

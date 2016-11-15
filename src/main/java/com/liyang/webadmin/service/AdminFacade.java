package com.liyang.webadmin.service;

import com.liyang.webadmin.entity.User;

public interface AdminFacade {
	
	public String findUsers();
	
	public boolean checkLoginName(String username);
	
	public void save(User user);
	
	public String findMenus();

}

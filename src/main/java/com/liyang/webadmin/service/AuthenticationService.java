package com.liyang.webadmin.service;

import com.liyang.webadmin.entity.User;

public interface AuthenticationService {
	
	public User findByUsername(String username);

}

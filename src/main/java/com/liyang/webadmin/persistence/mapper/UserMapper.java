package com.liyang.webadmin.persistence.mapper;

import java.util.List;

import com.liyang.webadmin.entity.User;

public interface UserMapper {
	
	User findByUsername(String username);
	
	List<User> findUsers();

}

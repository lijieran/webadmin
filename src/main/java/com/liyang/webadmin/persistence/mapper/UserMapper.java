package com.liyang.webadmin.persistence.mapper;

import com.liyang.webadmin.entity.User;

public interface UserMapper {
	
	User findByUsername(String username);

}

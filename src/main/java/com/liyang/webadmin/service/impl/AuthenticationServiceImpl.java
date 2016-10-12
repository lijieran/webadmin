package com.liyang.webadmin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.liyang.webadmin.entity.User;
import com.liyang.webadmin.persistence.mapper.UserMapper;
import com.liyang.webadmin.service.AuthenticationService;


@Service
public class AuthenticationServiceImpl implements AuthenticationService{
	
	@Resource
	private UserMapper userMapper;

	public User findByUsername(String username) {
		return userMapper.findByUsername(username);
	}

}

package com.liyang.webadmin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.liyang.webadmin.entity.User;
import com.liyang.webadmin.persistence.mapper.UserMapper;
import com.liyang.webadmin.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService{
	
	@Resource
	private UserMapper userMapper;

	public String findUsers() {
        List<User> users = userMapper.findUsers();
        Gson gson = new Gson();
        String json = gson.toJson(users);
		return json;
	}

}

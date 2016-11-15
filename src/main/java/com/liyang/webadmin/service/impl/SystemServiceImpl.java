package com.liyang.webadmin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.liyang.webadmin.entity.Menu;
import com.liyang.webadmin.entity.User;
import com.liyang.webadmin.persistence.mapper.MenuMapper;
import com.liyang.webadmin.persistence.mapper.UserMapper;
import com.liyang.webadmin.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService{
	
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

	public void save(User user) {
		user.setPassword(DigestUtils.md5Hex(user.getPassword()));
		userMapper.save(user);
		
	}

	public String findMenus() {
		List<Menu> menus = menuMapper.findMenus();
        Gson gson = new Gson();
        String json = gson.toJson(menus);
		return json;
	}

}

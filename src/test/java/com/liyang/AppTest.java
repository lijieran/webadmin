package com.liyang;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.liyang.webadmin.entity.User;
import com.liyang.webadmin.persistence.mapper.UserMapper;

import junit.framework.TestCase;

public class AppTest extends TestCase{
	
protected ApplicationContext context;
	
	@Override
	protected void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("spring-jdbc.xml");
	}
	
	public void testA() {
		UserMapper userMapper = (UserMapper)context.getBean(UserMapper.class);
		User user = userMapper.findByUsername("lijieran");
		System.out.println(user.getPassword());
		
	}

}

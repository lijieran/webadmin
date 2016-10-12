package com.liyang.webadmin.shiro;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.liyang.webadmin.entity.User;
import com.liyang.webadmin.service.AuthenticationService;


public class ShiroRealm extends AuthorizingRealm{
	
	@Resource
	private AuthenticationService authenticationService;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
		// TODO Auto-generated method stub
		System.out.println("2222");
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		
		info.addRole("Captains");
		
		return info;
	}

	
	/**
	 * 认证回调函数, 登录时调用
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {

		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		
		String username = token.getUsername();
		
		User user = authenticationService.findByUsername(username);
		
		if(user!=null) {
			System.out.println("==="+user.getUsername());
			return new SimpleAuthenticationInfo(username, user.getPassword(), getName());
		}
		
		System.out.println(token.getUsername());
		System.out.println(token.getPassword());
		return null;
	}

}

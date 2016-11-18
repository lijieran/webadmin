package com.liyang.webadmin.shiro;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
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
	
	private static Logger logger = Logger.getLogger(ShiroRealm.class);
	
	@Resource
	private AuthenticationService authenticationService;

	
	/**
	 * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principal) {
		// TODO Auto-generated method stub
		System.out.println("2222");
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		
		info.addRole("Captains");
		info.addStringPermission("system:menu:edit");
		
		info.addStringPermission("system:menu:view");
		return info;
	}

	
	/**
	 * 认证回调函数, 登录时调用
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {

		try {
			UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
			
			String username = token.getUsername();
			
			User user = authenticationService.findByUsername(username);
			
			if(user!=null) {
				System.out.println("==="+user.getUsername());
				return new SimpleAuthenticationInfo(username, user.getPassword(), getName());
			}
			
			System.out.println(token.getUsername());
			System.out.println(token.getPassword());
		} catch (Exception e) {
			logger.error(e,e);
		}
		return null;
	}

}

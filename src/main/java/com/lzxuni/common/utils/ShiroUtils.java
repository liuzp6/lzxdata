package com.lzxuni.common.utils;

import com.lzxuni.modules.sys.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

/**
 * 
 * <b>功能：</b>Shiro工具类 <br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年6月4日 下午3:49:01
 * @version 1.0 <br>
 */
public class ShiroUtils {

	public static Session getSession() {
		return SecurityUtils.getSubject().getSession();
	}

	public static Subject getSubject() {
		return SecurityUtils.getSubject();
	}

	public static User getUser() {
		return (User)SecurityUtils.getSubject().getPrincipal();
	}

	public static String getUserId() {
		return getUser().getUserId();
	}
	
	public static void setSessionAttribute(Object key, Object value) {
		getSession().setAttribute(key, value);
	}

	public static Object getSessionAttribute(Object key) {
		return getSession().getAttribute(key);
	}

	public static boolean isLogin() {
		return SecurityUtils.getSubject().getPrincipal() != null;
	}

	public static void logout() {
		SecurityUtils.getSubject().logout();
	}
	

}

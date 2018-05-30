package com.lzxuni.common.utils;


import com.lzxuni.modules.system.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public final class SessionUtil {
	//private static final Logger logger = LoggerFactory.getLogger(SessionUtil.class) ;
	private static final String USER = "USER";    //用户
	private static final String VERIFY_CODE = "verifyCode";//验证码
  
	/**
	  * 设置session的值
	  * @param request
	  * @param key
	  * @param value
	  */
	 public static void setAttr(HttpServletRequest request, String key, Object value){
		 request.getSession(true).setAttribute(key, value);
	 }
	 
	 
	 /**
	  * 获取session的值
	  * @param request
	  * @param key
	  */
	 public static Object getAttr(HttpServletRequest request, String key){
		 return request.getSession(true).getAttribute(key);
	 }
	 
	 /**
	  * 删除Session值
	  * @param request
	  * @param key
	  */
	 public static void removeAttr(HttpServletRequest request, String key){
		 request.getSession(true).removeAttribute(key);
	 }
	 
	 /**
	  * 设置用户信息 到session
	  * @param request
	  * @param user
	  */
	 public static void setUser(HttpServletRequest request, Object user){
		 request.getSession(true).setAttribute(USER, user);
	 }
	 
	 
	 /**
	  * 从session中获取用户信息
	  * @param request
	  * @return SysUser
	  */
	 public static User getUser(HttpServletRequest request){
		return (User) request.getSession(true).getAttribute(USER);
	 }
	 
	 
	 /**
	  * 从session中获取用户信息
	  * @param request
	  * @return SysUser
	  */
	 public static void removeUser(HttpServletRequest request){
		removeAttr(request, USER);
	 }
	 
	 
	 /**
	  * 设置验证码 到session
	  * @param request
	  * @param sessionVerifyCode
	  */
	 public static void setVerifyCode(HttpServletRequest request, String sessionVerifyCode){
		 request.getSession(true).setAttribute(VERIFY_CODE, sessionVerifyCode);
	 }
	 
	 
	 /**
	  * 从session中获取验证码
	  * @param request
	  * @return SysUser
	  */
	 public static String getVerifyCode(HttpServletRequest request){
		return (String)request.getSession(true).getAttribute(VERIFY_CODE);
	 }
	 
	 
	 /**
	  * 从session中获删除验证码
	  * @param request
	  * @return SysUser
	  */
	 public static void removeVerifyCode(HttpServletRequest request){
		removeAttr(request, VERIFY_CODE);
	 }

	/**
	 * 
	 * <b>功能：</b>清除用户所有session<br>
	 * <b>作者：</b>孙志强<br>
	 * <b>日期：</b> 2016年11月27日 下午10:44:12 <br> 
	 * @param session 
	 * @return void  
	 */
	public static void removeSessionAll(HttpSession session) {
		if (session != null) {
			java.util.Enumeration<?> e = session.getAttributeNames();
			while (e.hasMoreElements()) {
				String sessionName = (String) e.nextElement();
				session.removeAttribute(sessionName);
			}
		}
	}
}

package com.lzxuni.modules.system.entity;

import java.util.Date;


/**
 * 功能描述: <br>
 * @Author:孙志强
 * @date: 2018/3/15 10:56
*/
public class UserLog extends  User{
	private String type;
	public UserLog() {
	}
	public UserLog(String userId,String username,String lastLoginIp,Date lastLoginTime,String type) {
		super();
		setUserId(userId);
		setUsername(username);
		setLastLoginIp(lastLoginIp);
		setLastLoginTime(lastLoginTime);
		this.type = type;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}

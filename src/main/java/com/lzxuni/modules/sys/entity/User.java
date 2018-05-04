package com.lzxuni.modules.sys.entity;

import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:32
 * @Modified BY:
 **/
@TableName("sys_user")
public class User implements Serializable {
	private String userId;
	private String username;
	private Integer status;
	private String password;
	private String salt;


	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}

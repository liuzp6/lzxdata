package com.lzxuni.modules.system.entity;


/**
 *@Title RoleUser.java
 *@description 角色用户多对多关联表
 *@author 孙志强
 *@time 2016年11月4日 下午3:17:06
 *@version 1.0
 **/
public class RoleUser {
	private String id ;
	private String userId ;
	private String roleId ;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	@Override
	public String toString() {
		return "SysRoleUser [id=" + id + ", userId=" + userId + ", roleId=" + roleId + "]";
	}
}

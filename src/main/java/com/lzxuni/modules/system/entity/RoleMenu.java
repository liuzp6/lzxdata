package com.lzxuni.modules.system.entity;


/**
 *@Title RoleMenu.java
 *@description 角色菜单多对多关联表
 *@author 孙志强
 *@time 2016年11月4日 下午3:17:06
 *@version 1.0
 **/
public class RoleMenu {
	private String id ;
	private String roleId ;
	private String menuId ;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	@Override
	public String toString() {
		return "SysRoleMenu [id=" + id + ", roleId=" + roleId + ", menuId=" + menuId + "]";
	}
	
}

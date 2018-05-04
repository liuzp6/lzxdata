package com.lzxuni.modules.sys.entity;


import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * 功能描述: <br>
 * @Author:孙志强
 * @date: 2018/3/15 10:56
*/
@TableName("sys_user")
public class User implements Serializable{
	/**
	 *
	 */
	private static final long serialVersionUID = 7632952419415232387L;
	private String userId ;
	private String companyId ;
	private String username ;
	private String realname ;
	private Integer status ;
	private String salt ;
	private String password ;

	private String sex ;
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date registerTime ;
	private String registerIp ;
	private Date lastLoginTime ;
	private String lastLoginIp ;
	private Integer loginCount ;
	private Date errorTime ;
	private Integer errorCount ;
	private String errorIp ;
	private String isAdmin;

	/* 哈联通扩展字段 */
	private String encode ;
	private String mobile ;
	private String qq ;
	private String wechat ;


	//公司
	@TableField(exist=false)
	private Company company;
	//部门集合
	//查询的时候用
	@TableField(exist=false)
	private String deptId;
	@TableField(exist=false)
	private List<Dept> deptList;
	//角色集合
	@TableField(exist=false)
	private List<Role> roleList ;
	//岗位集合
	@TableField(exist=false)
	private List<Post> postList ;

	/*构造方法*/
	public User(){}
	public User(User user){}
	/* set,get方法区 */

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getDeptId() {
		return deptId;
	}

	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	public List<Dept> getDeptList() {
		return deptList;
	}

	public void setDeptList(List<Dept> deptList) {
		this.deptList = deptList;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public List<Post> getPostList() {
		return postList;
	}

	public void setPostList(List<Post> postList) {
		this.postList = postList;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realName) {
		this.realname = realname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public String getRegisterIp() {
		return registerIp;
	}

	public void setRegisterIp(String registerIp) {
		this.registerIp = registerIp;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public Integer getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
	}

	public Date getErrorTime() {
		return errorTime;
	}

	public void setErrorTime(Date errorTime) {
		this.errorTime = errorTime;
	}

	public Integer getErrorCount() {
		return errorCount;
	}

	public void setErrorCount(Integer errorCount) {
		this.errorCount = errorCount;
	}

	public String getErrorIp() {
		return errorIp;
	}

	public void setErrorIp(String errorIp) {
		this.errorIp = errorIp;
	}

	public String getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}

	public String getEncode() {
		return encode;
	}

	public void setEncode(String enCode) {
		this.encode = encode;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String weChat) {
		this.wechat = wechat;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}





}

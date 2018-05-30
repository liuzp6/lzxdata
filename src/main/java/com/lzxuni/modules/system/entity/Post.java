package com.lzxuni.modules.system.entity;


import com.lzxuni.modules.common.entity.Tree;

import java.util.Date;
import java.util.List;

/**

/**
 * 〈一句话功能简述〉<br>
 * 公司管理
 * @author szq
 * @create 2018-03-19 10:36
 * @Modified BY
 **/

public class Post extends Tree {
	//自定义字段
	//1：列表-创建用户2：岗位用户管理中，代表用户id
	private String createUserId ;
	//岗位名称
	private String name ;
	//部门ID
	private String deptId ;
	//公司ID
	private String companyId;
	//岗位编号
	private String enCode ;
	//备注
	private String description ;
	//创建日期
	private Date createTime ;
	// 创建用户
	private User createUser;
	// 一个岗位属于一个部门
	private Dept dept ;
	// 一个岗位属于一个公司
	private Company company ;
	// 一个岗位所管辖的直接岗位集合
	private List<Post> postList ;
	// 一个岗位包含的用户
	private List<User> userList ;
	/*方法区*/

	public String getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(String createUserId) {
		this.createUserId = createUserId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDeptId() {
		return deptId;
	}

	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getEnCode() {
		return enCode;
	}

	public void setEnCode(String enCode) {
		this.enCode = enCode;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public User getCreateUser() {
		return createUser;
	}

	public void setCreateUser(User createUser) {
		this.createUser = createUser;
	}

	public Dept getDept() {
		return dept;
	}

	public void setDept(Dept dept) {
		this.dept = dept;
	}

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}

	public List<Post> getPostList() {
		return postList;
	}

	public void setPostList(List<Post> postList) {
		this.postList = postList;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
}

package com.lzxuni.modules.system.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 *@Title Dept.java
 *@description 部门表
 *@author 孙志强
 *@time 2016年11月4日 下午3:27:58
 *@version 1.0
 **/
public class Dept extends Tree implements Serializable{
	
	private static final long serialVersionUID = -1846923635764256338L;
	
	private Integer lft ;  //jqgrid用
	private Integer rgt ;//jqgrid用
	private Integer level ;//jqgrid用
	private String expanded ;//jqgrid用
	private String open ;   //树形菜单用
	private String isParent ;//树形菜单用
	private String click ;//树形菜单用
	private String checked ;//树形菜单用
	
	private String id ;
	private String companyId ;
	private String parentId ;
	private String isLeaf ;

	private String name ;
	private String text ; //lrselect树形菜单需要
	private String enCode ;
	private String shortName ;
	private String manager ;
	private String outerPhone ;
	private String innerPhone ;
	private String email ;
	private String fax ;
	private String description ;



	private Date createTime ;

	//子部门集合
	private List<Dept> childNodes ;
	//公司
	private Company company;

	/*方法分割线*/

	public String getText() {
		return name;
	}

	public void setText(String text) {
		this.text = text;
	}

	public List<Dept> getChildNodes() {
		return childNodes;
	}

	public void setChildNodes(List<Dept> childNodes) {
		this.childNodes = childNodes;
	}

	public String getClick() {
		return click;
	}

	public void setClick(String click) {
		this.click = click;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public Integer getLft() {
		return lft;
	}

	public void setLft(Integer lft) {
		this.lft = lft;
	}

	public Integer getRgt() {
		return rgt;
	}

	public void setRgt(Integer rgt) {
		this.rgt = rgt;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}

	public String getExpanded() {
		return expanded;
	}

	public void setExpanded(String expanded) {
		this.expanded = expanded;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public String getIsParent() {
		return isParent;
	}

	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}

	public String getChecked() {
		return checked;
	}

	public void setChecked(String checked) {
		this.checked = checked;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getIsLeaf() {
		return isLeaf;
	}

	public void setIsLeaf(String isLeaf) {
		this.isLeaf = isLeaf;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnCode() {
		return enCode;
	}

	public void setEnCode(String enCode) {
		this.enCode = enCode;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getOuterPhone() {
		return outerPhone;
	}

	public void setOuterPhone(String outerPhone) {
		this.outerPhone = outerPhone;
	}

	public String getInnerPhone() {
		return innerPhone;
	}

	public void setInnerPhone(String innerPhone) {
		this.innerPhone = innerPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
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

	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}
}

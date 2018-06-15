package com.lzxuni.modules.system.entity;

import com.alibaba.fastjson.annotation.JSONField;

import java.io.Serializable;
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

public class Company extends Tree implements Serializable {

	private Integer lft ;  //jqgrid用
	private Integer rgt ;//jqgrid用
	private Integer level ;//jqgrid用
	private String expanded ;//jqgrid用
	private String open ;   //树形菜单用
	private String isParent ;//树形菜单用
	private Boolean click ;//树形菜单用
	private String checked ;//树形菜单用

	private String id ;

	private String isLeaf ;
	private Date createTime ;
	//公司名称
	private String name ;
	private String text ; //lrselect树形菜单需要
	//成立时间
	@JSONField(format="yyyy-MM-dd")
	private Date foundedTime ;
	//公司性质
	private String nature ;
	//负责人
	private String manager ;
	//电话
	private String outerPhone ;
	//邮箱
	private String email ;
	//传真
	private String fax ;
	//地址
	private String address;
	//业务范围
	private String businessScope ;
	//备注
	private String description ;
	// 一个公司对应多个部门
	private List<Dept> deptList ;
	// 一个公司包含的分公司或者子公司
	private List<Company> childNodes ;




	/*方法区*/

	public List<Company> getChildNodes() {
		return childNodes;
	}

	public void setChildNodes(List<Company> childNodes) {
		this.childNodes = childNodes;
	}

	public String getText() {
		return name;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Boolean getClick() {
		return click;
	}

	public void setClick(Boolean click) {
		this.click = click;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getIsLeaf() {
		return isLeaf;
	}

	public void setIsLeaf(String isLeaf) {
		this.isLeaf = isLeaf;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getFoundedTime() {
		return foundedTime;
	}

	public void setFoundedTime(Date foundedTime) {
		this.foundedTime = foundedTime;
	}

	public String getNature() {
		return nature;
	}

	public void setNature(String nature) {
		this.nature = nature;
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

	public String getBusinessScope() {
		return businessScope;
	}

	public void setBusinessScope(String businessScope) {
		this.businessScope = businessScope;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Dept> getDeptList() {
		return deptList;
	}

	public void setDeptList(List<Dept> deptList) {
		this.deptList = deptList;
	}
}

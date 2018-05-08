package com.lzxuni.modules.common.entity;

/**

/**
 *  jqgird 树形菜单基本字段信息<br>
 *
 * @author:szq
 * @create:2018-03-19 11:08
 * @Modified BY:
 **/

public class Tree {
	private String id ;  //树形菜单用
	private String parentId ;  //树形菜单用
	private String isLeaf ;  //树形菜单用
	private Boolean open ;   //树形菜单用
	private Boolean isParent ;//树形菜单用
	private String url ;     //地址
	private String icon ;   //图标
	private Boolean click ;//树形菜单用
	private Boolean checked ;//树形菜单用
	private Boolean nocheck ;  //是否有单选框
	private Boolean chkDisabled ;  //是否禁用单选框


	private Integer lft ;  //jqgrid用
	private Integer rgt ;//jqgrid用
	private Integer level ;//jqgrid用
	private String expanded ;//jqgrid用

	/* 方法区 */


	public Boolean getParent() {
		return isParent;
	}

	public void setParent(Boolean parent) {
		isParent = parent;
	}

	public Boolean getChkDisabled() {
		return chkDisabled;
	}

	public void setChkDisabled(Boolean chkDisabled) {
		this.chkDisabled = chkDisabled;
	}

	public String getId() {

		return id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Boolean getNocheck() {
		return nocheck;
	}

	public void setNocheck(Boolean nocheck) {
		this.nocheck = nocheck;
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

	public Boolean getOpen() {
		return open;
	}

	public void setOpen(Boolean open) {
		this.open = open;
	}

	public Boolean getIsParent() {
		return isParent;
	}

	public void setIsParent(Boolean isParent) {
		this.isParent = isParent;
	}

	public Boolean getClick() {
		return click;
	}

	public void setClick(Boolean click) {
		this.click = click;
	}

	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
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
}

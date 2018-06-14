package com.lzxuni.modules.system.entity;

import com.baomidou.mybatisplus.annotations.TableField;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-31 15:11
 * @Modified BY:
 **/

public class Tree {

	private String parentId ;
	private String icon;
    @TableField(exist=false)
	private Boolean showcheck;
    @TableField(exist=false)
	private Integer checkstate;
    @TableField(exist=false)
	private Boolean hasChildren;
    @TableField(exist=false)
	private Boolean isexpand;
    @TableField(exist=false)
	private Boolean complete;


	/*方法区*/

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Boolean getShowcheck() {
		return showcheck;
	}

	public void setShowcheck(Boolean showcheck) {
		this.showcheck = showcheck;
	}

	public Integer getCheckstate() {
		return checkstate;
	}

	public void setCheckstate(Integer checkstate) {
		this.checkstate = checkstate;
	}

	public Boolean getHasChildren() {
		return hasChildren;
	}

	public void setHasChildren(Boolean hasChildren) {
		this.hasChildren = hasChildren;
	}

	public Boolean getIsexpand() {
		return isexpand;
	}

	public void setIsexpand(Boolean isexpand) {
		this.isexpand = isexpand;
	}

	public Boolean getComplete() {
		return complete;
	}

	public void setComplete(Boolean complete) {
		this.complete = complete;
	}
}

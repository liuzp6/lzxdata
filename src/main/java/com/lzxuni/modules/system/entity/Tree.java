package com.lzxuni.modules.system.entity;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-31 15:11
 * @Modified BY:
 **/

public class Tree {

	private String icon;
	private Boolean showcheck;
	private Integer checkstate;
	private Boolean hasChildren;
	private Boolean isexpand;
	private Boolean complete;


	/*方法区*/

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

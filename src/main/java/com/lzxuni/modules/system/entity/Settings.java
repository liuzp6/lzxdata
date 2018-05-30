package com.lzxuni.modules.system.entity;

public class Settings {

	private String id ;
	private String name ;
	private String value ;
	
	private String title ;    //网站标题，每个页面都有
	private String keywords ; //网站关键字，每个页面都有
	private String sitename ; //网站名称 ，用于主页或者后台主页页头显示 ，例如凌之迅后台管理系统。
	private String description ; //网站描述，每个页面都有
	private String logofile ; //主页图标图片地址 
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getSitename() {
		return sitename;
	}
	public void setSitename(String sitename) {
		this.sitename = sitename;
	}
	public String getLogofile() {
		return logofile;
	}
	public void setLogofile(String logofile) {
		this.logofile = logofile;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Settings [id=" + id + ", name=" + name + ", value=" + value + ", title=" + title + ", keywords=" + keywords
				+ ", sitename=" + sitename + ", description=" + description + ", logofile=" + logofile + "]";
	}
	
	
}

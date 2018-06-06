package com.lzxuni.modules.system.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.util.Date;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-06-05 19:59
 * @Modified BY:
 **/
@TableName("database_link")
public class DatabaseLink extends Tree {
	@TableId
	private String id;
	private String name;
	private String text ; //lrselect树形菜单需要
	private String aliax;
	private String type;
	private String username;
	private String password;
	private String url;
	private String description;
	@JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date createTime;

	private List<DatabaseLink> childNodes ;
	/*方法区域*/

	public List<DatabaseLink> getChildNodes() {
		return childNodes;
	}

	public void setChildNodes(List<DatabaseLink> childNodes) {
		this.childNodes = childNodes;
	}

	public String getText() {
		return name;
	}

	public void setText(String text) {
		this.text = text;
	}

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

	public String getAliax() {
		return aliax;
	}

	public void setAliax(String aliax) {
		this.aliax = aliax;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
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
}

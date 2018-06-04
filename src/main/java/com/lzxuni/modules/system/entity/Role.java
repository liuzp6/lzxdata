package com.lzxuni.modules.system.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;

/**
 * <b>功能：</b> <br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年5月6日 上午11:36:05
 * @version 1.0 <br>
 */
@TableName("sys_role")
public class Role implements Serializable {
	
	private static final long serialVersionUID = -1440111483751572155L;
	private String id ;
	private String name;
    @JSONField(format="yyyy-MM-dd HH:mm:ss")
	private Date createtime;
	//标识是否超级管理员Y，是，N不是，超级管理员，保证角色用户不可以删除，系统点不坏，非超级管理员，不读取，但超级管理员修改资料可以查询
	private String flag ;
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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Override
	public String toString() {
		return "SysRole [id=" + id + ", name=" + name + ", createTime=" + createtime + "]";
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}

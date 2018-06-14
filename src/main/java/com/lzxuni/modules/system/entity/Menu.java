package com.lzxuni.modules.system.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.util.Date;
import java.util.List;


/**
 * @Title Menu.java
 * @description 菜单表
 * @author 孙志强
 * @time 2016年11月4日 下午3:08:41
 * @version 1.0
 **/
@TableName("sys_menu")
public class Menu extends Tree{
    @TableId
	private String id;
	private String parentId;
	private String type ;
	private String style ;
	private String name;
	private Integer sortNumber;
	private String url;
	private String percode;
	private String icon;
	private String isLeaf;
    @JSONField(format="yyyy-MM-dd")
	private Date createtime;
	// 控制菜单
//	private List<Menu> menuList;
    @TableField(exist=false)
	private List<Menu> childNodes;
    @TableField(exist=false)
    private String text ; //树形菜单需要
    @Override
    public Boolean getHasChildren() {
        if(getChildNodes()!=null && getChildNodes().size()>0){
            return true;
        }else{
            return false;
        }
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSortNumber() {
		return sortNumber;
	}
	public void setSortNumber(Integer sortNumber) {
		this.sortNumber = sortNumber;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPercode() {
		return percode;
	}
	public void setPercode(String percode) {
		this.percode = percode;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getIsLeaf() {
		return isLeaf;
	}
	public void setIsLeaf(String isLeaf) {
		this.isLeaf = isLeaf;
	}

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public List<Menu> getChildNodes() {
        return childNodes;
    }

    public void setChildNodes(List<Menu> childNodes) {
        this.childNodes = childNodes;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((createtime == null) ? 0 : createtime.hashCode());
		result = prime * result + ((icon == null) ? 0 : icon.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((isLeaf == null) ? 0 : isLeaf.hashCode());
		result = prime * result + ((childNodes == null) ? 0 : childNodes.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((parentId == null) ? 0 : parentId.hashCode());
		result = prime * result + ((percode == null) ? 0 : percode.hashCode());
		result = prime * result + ((sortNumber == null) ? 0 : sortNumber.hashCode());
		result = prime * result + ((style == null) ? 0 : style.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		result = prime * result + ((url == null) ? 0 : url.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Menu other = (Menu) obj;
		if (createtime == null) {
			if (other.createtime != null)
				return false;
		} else if (!createtime.equals(other.createtime))
			return false;
		if (icon == null) {
			if (other.icon != null)
				return false;
		} else if (!icon.equals(other.icon))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (isLeaf == null) {
			if (other.isLeaf != null)
				return false;
		} else if (!isLeaf.equals(other.isLeaf))
			return false;
		if (childNodes == null) {
			if (other.childNodes != null)
				return false;
		} else if (!childNodes.equals(other.childNodes))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (parentId == null) {
			if (other.parentId != null)
				return false;
		} else if (!parentId.equals(other.parentId))
			return false;
		if (percode == null) {
			if (other.percode != null)
				return false;
		} else if (!percode.equals(other.percode))
			return false;
		if (sortNumber == null) {
			if (other.sortNumber != null)
				return false;
		} else if (!sortNumber.equals(other.sortNumber))
			return false;
		if (style == null) {
			if (other.style != null)
				return false;
		} else if (!style.equals(other.style))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		if (url == null) {
			if (other.url != null)
				return false;
		} else if (!url.equals(other.url))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", parentId=" + parentId + ", type=" + type + ", style=" + style + ", name=" + name
				+ ",  sortNumber=" + sortNumber + ", url=" + url + ", percode=" + percode
				+ ", icon=" + icon + ", isLeaf=" + isLeaf + ", createtime=" + createtime + ", childNodes=" + childNodes
				+ "]";
	}
}

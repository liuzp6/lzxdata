package com.lzxuni.modules.system.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * 
 * </p>
 *
 * @author 孙志强
 * @since 2018-06-11
 */
@TableName("base_dataitem")
public class BaseDataitem extends Tree implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 分类主键
     */
	@TableId
    private String itemId;
	@TableField(exist=false)
    private String id;
    /**
     * 分类编码
     */
    private String itemCode;
    /**
     * 分类名称
     */
    private String itemName;
    /**
     * 树形结构
     */
    private Integer isTree;
    /**
     * 导航标记
     */
    private Integer isNav;
    /**
     * 排序码
     */
    private Integer sortCode;
    /**
     * 删除标记
     */
    private Integer deleteMark;
    /**
     * 有效标记
     */
    private Integer enabledMark;
    /**
     * 备注
     */
    private String description;
    /**
     * 创建日期
     */
    private Date createTime;
    /**
     * 创建用户主键
     */
    private String createUserid;
    /**
     * 创建用户
     */
    private String createUsername;
    /**
     * 修改日期
     */
    private Date modifyTime;
    /**
     * 修改用户逐渐
     */
    private String modifyUserid;
    /**
     * 修改用户
     */
    private String modifyUsername;

	@TableField(exist=false)
    private String text ; //lrselect树形菜单需要
	@TableField(exist=false)
    private List<BaseDataitem> childNodes ;
	@TableField(exist=false)
    private List<BaseDataitemDetail> baseDataitemDetailList ;
	private Boolean hasChildren;
    /*方法区*/

	@Override
	public Boolean getHasChildren() {
		if(getChildNodes()!=null && getChildNodes().size()>0){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public void setHasChildren(Boolean hasChildren) {
		this.hasChildren = hasChildren;
	}

	public String getId() {
		return itemId;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<BaseDataitemDetail> getBaseDataitemDetailList() {
        return baseDataitemDetailList;
    }

    public void setBaseDataitemDetailList(List<BaseDataitemDetail> baseDataitemDetailList) {
        this.baseDataitemDetailList = baseDataitemDetailList;
    }

    public String getText() {
        return itemName;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<BaseDataitem> getChildNodes() {
        return childNodes;
    }

    public void setChildNodes(List<BaseDataitem> childNodes) {
        this.childNodes = childNodes;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Integer getIsTree() {
        return isTree;
    }

    public void setIsTree(Integer isTree) {
        this.isTree = isTree;
    }

    public Integer getIsNav() {
        return isNav;
    }

    public void setIsNav(Integer isNav) {
        this.isNav = isNav;
    }

    public Integer getSortCode() {
        return sortCode;
    }

    public void setSortCode(Integer sortCode) {
        this.sortCode = sortCode;
    }

    public Integer getDeleteMark() {
        return deleteMark;
    }

    public void setDeleteMark(Integer deleteMark) {
        this.deleteMark = deleteMark;
    }

    public Integer getEnabledMark() {
        return enabledMark;
    }

    public void setEnabledMark(Integer enabledMark) {
        this.enabledMark = enabledMark;
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

    public String getCreateUserid() {
        return createUserid;
    }

    public void setCreateUserid(String createUserid) {
        this.createUserid = createUserid;
    }

    public String getCreateUsername() {
        return createUsername;
    }

    public void setCreateUsername(String createUsername) {
        this.createUsername = createUsername;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifytime) {
        this.modifyTime = modifyTime;
    }

    public String getModifyUserid() {
        return modifyUserid;
    }

    public void setModifyUserid(String modifyUserid) {
        this.modifyUserid = modifyUserid;
    }

    public String getModifyUsername() {
        return modifyUsername;
    }

    public void setModifyUsername(String modifyUsername) {
        this.modifyUsername = modifyUsername;
    }

    @Override
    public String toString() {
        return "BaseDataitem{" +
        ", itemId=" + itemId +
        ", itemCode=" + itemCode +
        ", itemName=" + itemName +
        ", isTree=" + isTree +
        ", isNav=" + isNav +
        ", sortCode=" + sortCode +
        ", deleteMark=" + deleteMark +
        ", enabledMark=" + enabledMark +
        ", description=" + description +
        ", createTime=" + createTime +
        ", createUserid=" + createUserid +
        ", createUsername=" + createUsername +
        ", modifyTime=" + modifyTime +
        ", modifyUserid=" + modifyUserid +
        ", modifyUsername=" + modifyUsername +
        "}";
    }
}

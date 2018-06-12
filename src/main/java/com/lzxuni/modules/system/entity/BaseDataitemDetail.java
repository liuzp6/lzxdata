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
@TableName("base_dataitem_detail")
public class BaseDataitemDetail implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 明细主键
     */
	@TableId
    private String itemDetailId;

    /**
     * 父类主键
     */
    private String itemId;
    /**
     * 父级主键
     */
    private String parentId;
    /**
     * 编码
     */
    private String itemCode;
    /**
     * 名称
     */
    private String itemName;
    /**
     * 值
     */
    private String itemValue;
    /**
     * 快速查询
     */
    private String quickQuery;
    /**
     * 简拼
     */
    private String simpleSpelling;
    /**
     * 是否默认
     */
    private Integer isDefault;
    /**
     * 排序码
     */
    private Integer sortCode;
    /**
     * 删除标记
     */
    private Integer deleteMark;
    /**
     * 有效标志
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
     * 修改用户主键
     */
    private String modifyUserid;
    /**
     * 修改用户
     */
    private String modifyUsername;
	@TableField(exist=false)
    private String text ; //lrselect树形菜单需要
	@TableField(exist=false)
    private List<BaseDataitemDetail> childNodes ;


    /*方法区*/

    public String getText() {
        return itemName;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<BaseDataitemDetail> getChildNodes() {
        return childNodes;
    }

    public void setChildNodes(List<BaseDataitemDetail> childNodes) {
        this.childNodes = childNodes;
    }

    public String getItemDetailId() {

        return itemDetailId;
    }

    public void setItemDetailId(String itemDetailId) {
        this.itemDetailId = itemDetailId;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
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

    public String getItemValue() {
        return itemValue;
    }

    public void setItemValue(String itemValue) {
        this.itemValue = itemValue;
    }

    public String getQuickQuery() {
        return quickQuery;
    }

    public void setQuickQuery(String quickQuery) {
        this.quickQuery = quickQuery;
    }

    public String getSimpleSpelling() {
        return simpleSpelling;
    }

    public void setSimpleSpelling(String simpleSpelling) {
        this.simpleSpelling = simpleSpelling;
    }

    public Integer getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Integer isDefault) {
        this.isDefault = isDefault;
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

    public void setModifyTime(Date modifyTime) {
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
        return "BaseDataitemDetail{" +
        ", itemDetailId=" + itemDetailId +
        ", itemId=" + itemId +
        ", parentId=" + parentId +
        ", itemCode=" + itemCode +
        ", itemName=" + itemName +
        ", itemValue=" + itemValue +
        ", quickQuery=" + quickQuery +
        ", simpleSpelling=" + simpleSpelling +
        ", isDefault=" + isDefault +
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

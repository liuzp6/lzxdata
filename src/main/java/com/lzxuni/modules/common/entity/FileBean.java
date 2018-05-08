package com.lzxuni.modules.common.entity;

import java.util.Date;


public class FileBean {
	private String id ;
	private String type ;//一个业务中，区分不同表单字段用，只有一个类型的时候，可为null
	private String ywType ;//区分不同业务用
	private String ywId ;
	private String descrption ;
	private String urlPath;//web访问路径
	private String urlSpath;//缩略图访问路径
	private String realPath;//磁盘路径
	private static Long limitImageSize;//限制图片大小,单位b，转换kb/1000
	private static Long limitFileSize;//限制文件大小,单位b，转换kb/1000
	private Long realSize;//文件真正大小,单位b，转换kb/1000
	private static String imageAllowType;//图片允许格式
	private static String fileAllowType;//文件排除格式
	private String realName ;//文件真正名称
	private String fileName ;//磁盘存储名称
	private String sfileName ;//若是图片，压缩后的名称
	private Date createTime ;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescrption() {
		return descrption;
	}
	public void setDescrption(String descrption) {
		this.descrption = descrption;
	}
	public String getUrlPath() {
		return urlPath;
	}
	public void setUrlPath(String urlPath) {
		this.urlPath = urlPath;
	}
	public String getUrlSpath() {
		return urlSpath;
	}
	public void setUrlSpath(String urlSpath) {
		this.urlSpath = urlSpath;
	}
	public String getRealPath() {
		return realPath;
	}
	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}
	public static Long getLimitImageSize() {
		return limitImageSize;
	}
	public static void setLimitImageSize(Long limitImageSize) {
		FileBean.limitImageSize = limitImageSize;
	}
	public static Long getLimitFileSize() {
		return limitFileSize; 
	}
	public static void setLimitFileSize(Long limitFileSize) {
		FileBean.limitFileSize = limitFileSize;
	}
	public Long getRealSize() {
		return realSize;
	}
	public void setRealSize(Long realSize) {
		this.realSize = realSize;
	}
	public static String getImageAllowType() {
		return imageAllowType;
	}
	public static void setImageAllowType(String imageAllowType) {
		FileBean.imageAllowType = imageAllowType;
	}
	public static String getFileAllowType() {
		return fileAllowType;
	}
	public static void setFileAllowType(String fileAllowType) {
		FileBean.fileAllowType = fileAllowType;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getSfileName() {
		return sfileName;
	}
	public void setSfileName(String sfileName) {
		this.sfileName = sfileName;
	}
	@Override
	public String toString() {
		return "FileBean [urlPath=" + urlPath + ", urlSpath=" + urlSpath + ", realPath=" + realPath + ", realSize="
				+ realSize + ", realName=" + realName + ", fileName=" + fileName + ", sfileName=" + sfileName + "]";
	}
	public String getYwId() {
		return ywId;
	}
	public void setYwId(String ywId) {
		this.ywId = ywId;
	}
	public String getYwType() {
		return ywType;
	}
	public void setYwType(String ywType) {
		this.ywType = ywType;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
}

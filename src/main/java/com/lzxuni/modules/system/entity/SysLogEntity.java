package com.lzxuni.modules.system.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;
import java.util.Date;


/**
 * 功能描述: 系统日志<br>
 * @author 孙志强
 * @date 2018/3/17 23:09
 */
@TableName("sys_log")
public class SysLogEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	@TableId
	private  String id;
	//用户名
	private String username;
	//系统功能
	private String function;
	//访问地址
	private String url;

	/*
	 * 功能描述: 用户操作类型：@之后第一段话。分为访问，只对列表出理解生效，登陆，增加，删除，修改，删除，导入，导出，异常等，以及个性化操作，比如修改密码等<br>
	 * @Author 孙志强
	 * @date 2018/3/17 23:12
	 */
	private String operationType;
	//操作类型集合
	@TableField(exist=false)
	private String[] operationTypes;
	/*
	 * 功能描述: 操作结果：成功，失败<br>
	 * @Author 孙志强
	 * @date 2018/3/17 23:12
	 */
	private String operationResult;
	/*
	 * 功能描述: 执行结果描述：如果是访问，内容为空，如果是异常，需要显示异常信息，如果是其他，显示为成功<br>
	 * @Author 孙志强
	 * @date 2018/3/17 23:12
	 */
	private String operationContent;
	/*
	 * 功能描述: 存储异常堆栈信息<br>
	 * @Author 孙志强
	 * @date 2018/3/18 18:59
	 */
	private String operationContentExt;
	//请求方法
	private String method;
	//请求参数
	private String params;
	//执行时长(毫秒)
	private Long time;
	//IP地址
	private String ip;
	//创建时间
	@JSONField(format="yyyy-MM-dd hh:mm:ss")
	private Date createTime;
	@TableField(exist=false)
	private Date startTime;
	@TableField(exist=false)
	private Date endTime;



	/*方法区*/

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getOperationContentExt() {
		return operationContentExt;
	}

	public void setOperationContentExt(String operationContentExt) {
		this.operationContentExt = operationContentExt;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public String[] getOperationTypes() {
		return operationTypes;
	}

	public void setOperationTypes(String[] operationTypes) {
		this.operationTypes = operationTypes;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFunction() {
		return function;
	}

	public void setFunction(String function) {
		this.function = function;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getOperationType() {
		return operationType;
	}

	public void setOperationType(String operationType) {
		this.operationType = operationType;
	}

	public String getOperationResult() {
		return operationResult;
	}

	public void setOperationResult(String operationResult) {
		this.operationResult = operationResult;
	}

	public String getOperationContent() {
		return operationContent;
	}

	public void setOperationContent(String operationContent) {
		this.operationContent = operationContent;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public Long getTime() {
		return time;
	}

	public void setTime(Long time) {
		this.time = time;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}

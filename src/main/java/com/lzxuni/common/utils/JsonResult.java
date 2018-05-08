package com.lzxuni.common.utils;


/**
 * 
 * <b>功能：</b> 用于生成Json格式 结果对象,系统内部统一jon返回值，成功例子：{"result":1,"message":""}，失败{"result":0,"message":""}<br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年3月8日 下午12:40:06
 * @version 1.0 <br>
 */
public class JsonResult {
	
	/**
	 * 请求结果，0为失败，1为成功
	 */
	private Integer result; 
	
	
	/**
	 * 请求结果信息
	 */
	private String message;
	
	
	/**
	 * 请求的返回数据对象，也将被转为json格式
	 */
	private Object data;
	
	
	public Integer getResult() {
		return result; 
	}
	public void setResult(Integer result) {
		this.result = result;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}

	
	
}

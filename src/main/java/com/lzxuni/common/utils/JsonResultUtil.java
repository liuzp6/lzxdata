package com.lzxuni.common.utils;


/**
 * json结果工具类<br>
 * 用于控制器返回json使用<br>
 * spring mvc的@ResponseBody自动将类 转为json<br>
 * {"result":1,"message":""}或<br>
 * {"result":1,"data":""}或<br>
 * result=0失败，1成功
 */
public class JsonResultUtil {

	/**
	 * 
	 * @Title: getSuccessJson 
	 * @Description: 获取成功状态的json
	 * @author 孙志强 
	 * @date   2017年3月5日 上午10:13:07
	 * @param:       @param message
	 * @param:       @return 要返回的信息   
	 * @return:      JsonResult  {"result":1,"message":""} 
	 */
	public static JsonResult getSuccessJson(String message) {
		JsonResult result = new JsonResult();
		result.setMessage(message);
		result.setResult(1);
		return result;
	}
	/**
	 * 获取失败状态的json 
	 * 
	 * @param message
	 *            要返回的信息
	 * @return json{"result":0,"message":""}
	 */
	public static JsonResult getErrorJson(String message){
		JsonResult result = new JsonResult();
		result.setMessage(message);
		result.setResult(0);
		return result;
	}

}

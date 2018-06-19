package com.lzxuni.common.exception;

import org.springframework.boot.web.servlet.error.DefaultErrorAttributes;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.WebRequest;

import java.util.Map;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-06-19 14:19
 * @Modified BY:
 **/
@Component
public class LzxErrorAttributes extends DefaultErrorAttributes {

	@Override
	public Map<String, Object> getErrorAttributes(WebRequest webRequest, boolean includeStackTrace) {
		Map<String, Object> map = super.getErrorAttributes(webRequest, includeStackTrace);
		map.put("code", "500");
		map.put("info", map.get("message"));
		//如果有自定义需要携带的数据
//		Map<String, Object> ext = (Map<String, Object>)webRequest.getAttribute("ext", 0);
//		map.put("ext", ext);
		return map;
	}
}

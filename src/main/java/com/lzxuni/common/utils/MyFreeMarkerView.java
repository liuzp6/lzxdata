package com.lzxuni.common.utils;

import org.springframework.web.servlet.view.freemarker.FreeMarkerView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * <b>功能：</b> <br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b> 2016年12月26日 上午9:36:50 <br>
 *@version 1.0
 **/
public class MyFreeMarkerView extends FreeMarkerView {
	private static final String CONTEXT_PATH = "base";
    @Override
    protected void exposeHelpers(Map<String, Object> model, HttpServletRequest request) throws Exception {
        model.put(CONTEXT_PATH, request.getContextPath());
        super.exposeHelpers(model, request);
    }
}

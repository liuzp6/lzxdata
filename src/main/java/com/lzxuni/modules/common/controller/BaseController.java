package com.lzxuni.modules.common.controller;


import com.github.pagehelper.PageInfo;
import com.lzxuni.modules.common.entity.PageData;
import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.shiro.ShiroUtils;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 
 * <b>功能：</b>统一日期处理 <br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年3月8日 下午10:54:04
 * @version 1.0 <br>
 */
@Controller
public class BaseController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	
	public PageData getPageData(PageInfo<?> pageInfo){
		PageData pageData = new PageData() ;
		pageData.setRows(pageInfo.getList());
		pageData.setTotal(pageInfo.getPages());
		pageData.setPage(pageInfo.getPageNum());
		pageData.setRecords(pageInfo.getTotal());
		pageData.setCosttime(10);
		return pageData ;
	}
	
	//用户信息
	protected User getUser() {
		return ShiroUtils.getUserEntity() ;
	}

	protected String getUserId() {
		return getUser().getUserId();
	}
}

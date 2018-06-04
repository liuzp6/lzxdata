package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.annotation.SysLog;
import com.lzxuni.common.utils.R;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.common.entity.PageData;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.SysLogEntity;
import com.lzxuni.modules.system.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 功能描述: 日志组件<br>
 * @Author 孙志强
 * @date 2018/3/18 12:25
*/
@RestController
@RequestMapping("/admin/LR_SystemModule/Log")
public class SysLogController extends BaseController {
	@Autowired
	private SysLogService sysLogService;

	@Override
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
	}
	// 列表
	@SysLog(function = "系统管理-系统日志",operationType = "访问")
	@RequestMapping("/index_v.html")
	public ModelAndView list() throws Exception {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/Log/index");
		return mv;
	}
	@RequestMapping("/GetPageList.html")
	public Object listDo(String pagination,String queryJson) throws Exception {
		SysLogEntity sysLogEntity = JSON.parseObject(queryJson, SysLogEntity.class);
		PageParameter pageParameter = JSON.parseObject(pagination, PageParameter.class);
		String[] operationTypes;
		if(sysLogEntity.getOperationType().equals("操作")){
			operationTypes= new String[]{"登陆","异常","访问"};
			sysLogEntity.setOperationType(null);
			sysLogEntity.setOperationTypes(operationTypes);
		}

		PageData pageData = getPageData(sysLogService.queryPage(pageParameter, sysLogEntity));
		return R.ok(pageData);
	}

	// 删除
	@ResponseBody
	@RequestMapping("/deleteOne.html")
	public Object deleteOne(@RequestParam("keyValue")String[] ids) throws Exception {
		sysLogService.deleteBatch(ids);
		return R.ok("删除成功");
	}
	// 清空
	@RequestMapping("/deleteAll.html")
	public ModelAndView deleteAll(String operationType)  {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/Log/deleteAll");
		mv.addObject("operationType", operationType);
		return mv;
	}
	// 清空
	@RequestMapping("/SaveRemoveLog.html")
	public Object saveRemoveLog(String operationType,Integer keepTime) throws Exception {
		System.out.println(operationType+"=======");
		sysLogService.deleteAll(operationType, keepTime);
		return R.ok("删除成功");
	}

	// 详情
	@RequestMapping("/detail.html")
	public ModelAndView detail(String id) {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/Log/detail");
//		SysLogEntity sysLogEntity = sysLogService.queryObject(id);
//		mv.addObject("sysLogEntity", sysLogEntity);
		return mv;
	}
}

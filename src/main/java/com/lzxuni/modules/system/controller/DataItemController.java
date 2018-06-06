package com.lzxuni.modules.system.controller;


import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/admin/LR_SystemModule/DataItem")
public class DataItemController extends BaseController {
	@Autowired
	private CompanyService companyService;
	// 列表
	@RequestMapping("/GetClassifyTree.html")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DataItem/GetClassifyTree");
		return mv;
	}

	@RequestMapping("/GetMap")
	public ModelAndView getMap(){
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DataItem/getMap");
		return mv;
	}

}
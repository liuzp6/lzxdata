package com.lzxuni.modules.demo.controller;


import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/admin/LR_CodeGeneratorModule/PluginDemo")
public class DemoController extends BaseController {
	@Autowired
	private CompanyService companyService;
	// 列表
	@RequestMapping("/Index.html")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("/admin/LR_CodeGeneratorModule/PluginDemo/index");
		return mv;
	}

}
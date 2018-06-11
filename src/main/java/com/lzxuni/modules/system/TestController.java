package com.lzxuni.modules.system;

import com.lzxuni.modules.common.controller.BaseController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 功能描述: 日志组件<br>
 * @Author 孙志强
 * @date 2018/3/18 12:25
*/
@RestController
public class TestController extends BaseController {

	// 详情
	@RequestMapping("/thymeleaf.html")
	public ModelAndView thymeleaf(String id) {
		ModelAndView mv = new ModelAndView("/thymeleaf");
		mv.addObject("list", "list");
		return mv;
	}
	// 详情
	@RequestMapping("/freemarker.html")
	public ModelAndView freemarker(String id) {
		ModelAndView mv = new ModelAndView("/freemarker");
		mv.addObject("list", "list");
		return mv;
	}
}

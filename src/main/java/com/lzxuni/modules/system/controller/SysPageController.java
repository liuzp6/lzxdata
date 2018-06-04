package com.lzxuni.modules.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 系统页面视图
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2016年11月24日 下午11:05:27
 */
@Controller
public class SysPageController {
	
//	@RequestMapping("modules/{module}/{url}.html")
//	public String module(@PathVariable("module") String module, @PathVariable("url") String url){
//		return "modules/" + module + "/" + url;
//	}
//
	@RequestMapping(value = {"/"})
	public String index(){
        return "redirect:/admin/index.html";
	}
//
//	@RequestMapping("index1.html")
//	public String index1(){
//		return "index1";
//	}

	@RequestMapping("login")
	public String login(){
		return "login";
	}

//	@RequestMapping("main.html")
//	public String main(){
//		return "main";
//	}
//
//	@RequestMapping("404.html")
//	public String notFound(){
//		return "404";
//	}

}

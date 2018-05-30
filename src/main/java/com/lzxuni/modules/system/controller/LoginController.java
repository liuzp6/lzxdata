package com.lzxuni.modules.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

	// 后台主页
	@RequestMapping("/admin/index.html")
	public ModelAndView index(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/Home/index");
		Cookie[] cookies = request.getCookies();
		String theme = "";
		for (Cookie cookie : cookies) {
			switch(cookie.getName()){
				case "Learn_ADMS_V6.1_UItheme":
					theme = cookie.getValue();
					break;
				default:
					break;
			}
		}

		switch(theme){
			case "1":
				mv.setViewName("/admin/Home/index");
				break;
			case "2":
				mv.setViewName("/admin/Home/index_2");
				break;
			case "3":
				mv.setViewName("/admin/Home/index_3");
				break;
			case "4":
				mv.setViewName("/admin/Home/index_4");
				break;
			default:
				mv.setViewName("/admin/Home/index");
				break;
		}
		return mv;
	}
	// 主页包含内容页
	@RequestMapping("/admin/AdminDesktopTemp.html")
	public ModelAndView adminDesktopTemp(String username, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/Home/AdminDesktopTemp");
		return mv;
	}
	// 用户session页面
	@RequestMapping("/admin/Login/GetUserInfo.html")
	public ModelAndView getUserInfo(String username, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/Login/GetUserInfo");
		return mv;
	}
	// 菜单页面
	@RequestMapping("/LR_SystemModule/Module/GetModuleList.html")
	public ModelAndView getModuleList(String username, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/Module/GetModuleList");
		return mv;
	}
	// 后台登录
	@RequestMapping("/admin/login.html")
	public ModelAndView login(String username, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("/admin/login");


		return mv;
	}

}

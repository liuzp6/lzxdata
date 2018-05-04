package com.lzxuni.modules.sys.controller;

import com.lzxuni.modules.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:32
 * @Modified BY:
 **/
@RestController
public class UserController {

	@Autowired
	private UserService userService;
	@RequestMapping("list")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView("/list");
		mv.addObject("list",userService.queryList());
		return mv;
	}
	@RequestMapping("flist")
	public ModelAndView flist(){
		ModelAndView mv = new ModelAndView("/freemarker");
		mv.addObject("list",userService.queryList());
		mv.addObject("string","123");
		return mv;
	}
	@RequestMapping("detail")
	public Object detail(){
		return userService.queryObject("1");
	}
	@RequestMapping("insert")
	public Object insert(){
		userService.insert(null);
		return null;
	}
	@RequestMapping("delete")
	public Object delete(){
		userService.delete(null);
		return null;
	}
	@RequestMapping("update")
	public Object update(){
		userService.update(null);
		return null;
	}
}

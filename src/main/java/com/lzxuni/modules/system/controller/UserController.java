package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.validator.ValidatorUtils;
import com.lzxuni.common.validator.group.AddGroup;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.service.UserService;
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
@RequestMapping("/admin/system/user")
public class UserController extends BaseController {

	@Autowired
	private UserService userService;
	@RequestMapping("/list_v.html")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView("/admin/system/user/list");
		return mv;
	}
	@RequestMapping("/insert_v.html")
	public ModelAndView insert() throws Exception {
		ModelAndView mv = new ModelAndView("/admin/system/user/insert");
		return mv;
	}
	@RequestMapping("insert_o.html")
	public Object insert(User user){
		//Assert.isBlank(user.getUsername(), "账号不能为空");
		ValidatorUtils.validateEntity(user, AddGroup.class);
		userService.save(user);
		return  R.ok();
	}

	@RequestMapping("/list_o.html")
	public Object listDo(PageParameter pageParameter,
						 String queryJson,String companyId) throws Exception {
		User user = JSON.parseObject(queryJson, User.class);
		if (user == null) {
			user = new User();
		}
		user.setCompanyId(companyId);
		return getPageData(userService.queryPage(pageParameter, user));
	}
	@RequestMapping("delete")
	public Object delete(String[] userIds){
		userService.deleteBatch(userIds);
		return  R.ok();
	}
	@RequestMapping("update")
	public Object update(User user){
		userService.update(user);
		return  R.ok();
	}
}

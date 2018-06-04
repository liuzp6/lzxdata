package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.common.validator.ValidatorUtils;
import com.lzxuni.common.validator.group.AddGroup;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.common.entity.PageData;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
@RequestMapping("/admin/LR_OrganizationModule/User")
public class UserController extends BaseController {

	@Autowired
	private UserService userService;

	@RequestMapping("/Index_v.html")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/User/index");
		return mv;
	}
	@RequestMapping("/GetPageList.html")
	public Object listDo(String pagination,User user) throws Exception {
		PageParameter pageParameter = JSON.parseObject(pagination, PageParameter.class);
		PageData pageData = getPageData(userService.queryPage(pageParameter, user));
		return R.ok(pageData);
	}
	@RequestMapping("/Form.html")
	public ModelAndView insert() {
		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/User/Form");
		return mv;
	}
	//插入处理
	@RequestMapping("/SaveForm.html")
	public Object insert(User user){
		//Assert.isBlank(user.getUsername(), "账号不能为空");
		ValidatorUtils.validateEntity(user, AddGroup.class);

		if(StringUtils.isEmpty(user.getUserId())){
			userService.save(user);
			return R.ok("保存成功");
		}else{
			userService.update(user);
			return R.ok("修改成功");
		}
	}

	//删除
	@RequestMapping("/DeleteForm.html")
	public Object delete(@RequestParam("keyValue")String[] userIds){
		userService.deleteBatch(userIds);
		return  R.ok("删除成功");
	}

	//更改用户状态
	@RequestMapping("/UpdateState.html")
	public Object updateState(@RequestParam("keyValue")String userId,Integer state){
		userService.updateState(state, userId);
		return  R.ok("修改成功");
	}
	//重置密码
	@RequestMapping("/ResetPassword.html")
	public Object resetPassword(@RequestParam("keyValue")String userId){
		boolean flag = userService.resetPassword(userId);

		if(!flag){
			return R.error("原密码不正确");
		}
		return  R.ok("重置成功");
	}
}

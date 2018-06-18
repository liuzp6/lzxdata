package com.lzxuni.modules.test;

import com.lzxuni.common.utils.R;
import com.lzxuni.modules.system.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-06-15 15:50
 * @Modified BY:
 **/
@RestController
public class TestController {

	@Autowired
	private TestService testService;




	@RequestMapping("/list")
	public Object list(){
		List<User> list = testService.list();
		return list;
	}
	@RequestMapping("/user/{userId}")
	public Object user(@PathVariable String userId){
		User user = testService.queryObject(userId);
		return user;
	}
	@RequestMapping("/update")
	public Object update(){
		User user = new User();
		testService.update(user);
		return user;
	}
	@RequestMapping("/delete")
	public Object delete(String userId){
		testService.delete(userId);
		return R.ok();
	}

}

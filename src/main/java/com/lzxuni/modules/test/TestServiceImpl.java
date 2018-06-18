package com.lzxuni.modules.test;

import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-06-15 15:47
 * @Modified BY:
 **/
@Service
public class TestServiceImpl implements  TestService{
	@Autowired
	private UserMapper userMapper;
	@Override
	@Cacheable(value = "userList")
	public List<User> list() {
		List<User> userList = userMapper.selectList(null);
		System.out.println("===");
		return null;
	}

	@Override
//	@Cacheable(value = "user1")
	public User queryObject(String userId) {
		User user = userMapper.selectById(userId);
		System.out.println("------");
		return user;
	}

	@Override
	public User update(User user) {
		userMapper.updateById(user);
		return user;
	}

	@Override
	public void delete(String userId) {
		System.out.println("删除成功");
	}
}

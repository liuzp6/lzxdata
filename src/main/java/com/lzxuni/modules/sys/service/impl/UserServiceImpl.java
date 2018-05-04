package com.lzxuni.modules.sys.service.impl;

import com.lzxuni.modules.sys.entity.User;
import com.lzxuni.modules.sys.mapper.UserMapper;
import com.lzxuni.modules.sys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:53
 * @Modified BY:
 **/
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	@Override
	//@Cacheable(value="queryList")
	public List<User> queryList() {
		System.out.println("是否走缓存");
		return userMapper.selectList(null);
	}

	@Override
	public User queryObject(String id) {
		return userMapper.selectById(id);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insert(User user) {
		user = new User();
		//user.setId("3");
		user.setUsername("admin1");
		Integer insert = userMapper.insert(user);
		update(null);
		System.out.println(insert+"===");
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void update(User user) {
		user = new User();
		user.setUserId("1");
		user.setUsername("admin11");
		Integer insert = userMapper.updateById(user);
		System.out.println(insert+"===");
		//System.out.println(1/0);
	}

	@Override
	public void delete(User user) {
		user = new User();
		user.setUserId("1");
		user.setUsername("admin1");
		Integer insert = userMapper.deleteById("1");
		System.out.println(insert+"===");
	}
}

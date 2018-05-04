package com.lzxuni.modules.sys.service;

import com.lzxuni.modules.sys.entity.User;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:47
 * @Modified BY:
 **/

public interface UserService {
	List<User> queryList();
	User queryObject(String id);

	void insert(User user);
	void update(User user);
	void delete(User user);
}

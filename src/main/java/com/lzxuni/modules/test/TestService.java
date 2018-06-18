package com.lzxuni.modules.test;

import com.lzxuni.modules.system.entity.User;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-06-15 15:35
 * @Modified BY:
 **/

public interface TestService {

	List<User> list() ;
	User queryObject(String userId) ;
	User update(User user) ;
	void delete(String userId) ;

}

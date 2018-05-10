package com.lzxuni.modules.sys.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.sys.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 系统日志
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-03-08 10:40:56
 */
@Mapper
public interface UserMapper extends BaseMapper<User> {

	List<User> queryList(User user);
	/**
	 * 查询用户的所有权限
	 * @param userId  用户ID
	 */
	List<String> queryAllPerms(String userId);

	/**
	 * 查询用户的所有菜单ID
	 */
	List<Long> queryAllMenuId(String userId);

	/**
	 * 根据用户名，查询系统用户
	 */
	User queryByUserName(String username);
}

package com.lzxuni.modules.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.github.pagehelper.PageInfo;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.User;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:47
 * @Modified BY:
 **/

public interface UserService extends IService<User> {
	PageInfo<User> queryPage(PageParameter pageParameter, User user);

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

	/**
	 * 保存用户
	 */
	void save(User user);

	/**
	 * 修改用户
	 */
	void update(User user);

	/**
	 * 删除用户
	 */
	void deleteBatch(String[] userIds);

	/**
	 * 修改密码
	 * @param userId       用户ID
	 * @param password     原密码
	 * @param newPassword  新密码
	 */
	boolean updatePassword(String userId, String password, String newPassword);


	/**
	 * 功能描述: 根据userId重置密码<br>
	 * @Author 孙志强
	 * @date 2018/6/2 22:59
	 * @param userId
	 * @return:boolean
	 */
	boolean resetPassword(String userId);



	void updateState(Integer state, String userId);

    /**
     * 根据角色ID，查询系统用户
     */
    List<User> queryByRoleId(String roleId);

    /**
     * 查询系统用户,不分页
     */
    List<User> queryList(User user);
}

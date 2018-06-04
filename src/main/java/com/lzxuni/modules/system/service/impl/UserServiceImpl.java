package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.mapper.UserMapper;
import com.lzxuni.modules.system.service.UserService;
import com.lzxuni.modules.system.shiro.ShiroUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:53
 * @Modified BY:
 **/
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

	@Override
	public PageInfo<User> queryPage(PageParameter pageParameter, User user) {
		PageHelper.startPage(pageParameter.getPage(), pageParameter.getRows());
		List<User> userList = baseMapper.queryList(user);
		PageInfo<User> pageInfo = new PageInfo<>(userList);

		return pageInfo;
	}

	@Override
	public List<String> queryAllPerms(String userId) {
		return null;
	}

	@Override
	public List<Long> queryAllMenuId(String userId) {
		return null;
	}

	@Override
	public User queryByUserName(String username) {
		return baseMapper.queryByUserName(username);
	}
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void save(User user) {
		user.setUserId(UuidUtil.get32UUID());
		user.setRegisterTime(new Date());
		user.setIsAdmin("N");
		// 初始密码
		String password = "111111";
		// 密码加密
		SimpleHash passwordMd5 = new SimpleHash(ShiroUtils.hashAlgorithmName, password,
				user.getUsername(), ShiroUtils.hashIterations);

		user.setPassword(passwordMd5.toString());
		user.setErrorCount(0);
		user.setLoginCount(0);

		//sha256加密
		String salt = RandomStringUtils.randomAlphanumeric(20);
		user.setSalt(salt);
		this.insert(user);
	}
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void update(User user) {
		updateById(user);
	}
	@Transactional(rollbackFor = Exception.class)
	@Override
	public void deleteBatch(String[] userIds) {
		this.deleteBatchIds(Arrays.asList(userIds));
	}
	@Transactional(rollbackFor = Exception.class)
	@Override
	public boolean updatePassword(String userId, String password, String newPassword) {
		User user = new User();
		user.setPassword(newPassword);
		return this.update(user,
				new EntityWrapper<User>().eq("user_id", userId).eq("password", password));
	}

	@Override
	public boolean resetPassword(String userId) {
		User user = this.selectById(userId);
		// 密码加密
		SimpleHash passwordMd5 = new SimpleHash(ShiroUtils.hashAlgorithmName, "111111",
				user.getUsername(), ShiroUtils.hashIterations);

		String newPassword = passwordMd5.toString();
		String password = user.getPassword();


		return updatePassword(userId, password, newPassword);
	}

	@Override
	public void updateState(Integer state, String userId) {
		User user = new User();
		user.setState(state);
		this.update(user,
				new EntityWrapper<User>().eq("user_id", userId));
	}
}

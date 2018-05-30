package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.mapper.UserMapper;
import com.lzxuni.modules.system.service.UserService;
import org.apache.commons.lang.RandomStringUtils;
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
		PageHelper.startPage(pageParameter.getPage(), pageParameter.getRows()).setOrderBy(
				pageParameter.getSidx() + " " + pageParameter.getSord());
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
		deleteBatchIds(Arrays.asList(userIds));
	}
	@Transactional(rollbackFor = Exception.class)
	@Override
	public boolean updatePassword(String userId, String password, String newPassword) {
		return false;
	}
}

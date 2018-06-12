
package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lzxuni.modules.system.entity.RoleUser;
import com.lzxuni.modules.system.mapper.RoleUserMapper;
import com.lzxuni.modules.system.service.RoleUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * RoleServiceImpl
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:43
 * @description 
 **/
@Service("roleUserService")
public class RoleUserServiceImpl extends ServiceImpl<RoleUserMapper, RoleUser> implements RoleUserService {
    @Autowired
    private RoleUserMapper roleUserMapper;

    @Override
    public void deleteUserRoleByRoleId(String id) throws Exception{
         roleUserMapper.deleteUserRoleByRoleId(id);
    }
}

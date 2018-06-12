package com.lzxuni.modules.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.lzxuni.modules.system.entity.RoleUser;

/**
 * RoleService
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:42
 * @description 
 **/

public interface RoleUserService extends IService<RoleUser> {
    /**
     * 根据角色删除用户角色关联表
     * @param id
     */
    void deleteUserRoleByRoleId(String id) throws  Exception;

}

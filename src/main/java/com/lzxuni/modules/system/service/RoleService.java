package com.lzxuni.modules.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.github.pagehelper.PageInfo;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.Role;

import java.util.List;

/**
 * RoleService
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:42
 * @description 
 **/

public interface RoleService extends IService<Role> {
    PageInfo<Role> queryPage(PageParameter pageParameter, Role role);

    List<Role> queryList(Role role) throws Exception;


    /**
     * 删除用户
     */
    void deleteBatch(String[] roleIds);
    /**
     * 根据角色查询所属用户
     * @param id  角色ID
     */
    List<String> queryUserIdsByRoleId(String id) throws Exception;
}

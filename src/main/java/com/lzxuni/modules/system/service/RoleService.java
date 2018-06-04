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
     * 保存用户
     */
    void save(Role role);

    /**
     * 修改用户
     */
    void update(Role role);

    /**
     * 删除用户
     */
    void deleteBatch(String[] roleIds);
}

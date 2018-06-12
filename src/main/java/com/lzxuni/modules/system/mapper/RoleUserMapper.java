package com.lzxuni.modules.system.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.system.entity.RoleUser;
import org.apache.ibatis.annotations.Mapper;

/**
 * RoleMapper
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:33
 * @description 
 **/
@Mapper
public interface RoleUserMapper extends BaseMapper<RoleUser> {

    /**
     * 根据角色删除用户角色关联表
     * @param id
     */
    void deleteUserRoleByRoleId(String id);

}

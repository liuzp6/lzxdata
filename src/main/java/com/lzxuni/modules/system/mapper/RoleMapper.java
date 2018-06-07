package com.lzxuni.modules.system.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.system.entity.Role;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * RoleMapper
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:33
 * @description 
 **/
@Mapper
public interface RoleMapper extends BaseMapper<Role> {

    List<Role> queryList(Role role);
    /**
     * 根据角色查询所属用户
     * @param id  角色ID
     */
    List<String> queryUserIdsByRoleId(String id);
}

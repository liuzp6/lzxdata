
package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.Role;
import com.lzxuni.modules.system.mapper.RoleMapper;
import com.lzxuni.modules.system.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * RoleServiceImpl
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:43
 * @description 
 **/
@Service("roleService")
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public PageInfo<Role> queryPage(PageParameter pageParameter, Role role) {
        PageHelper.startPage(pageParameter.getPage(), pageParameter.getRows()).setOrderBy(
                pageParameter.getSidx() + " " + pageParameter.getSord());
        List<Role> roleList = baseMapper.queryList(role);
        PageInfo<Role> pageInfo = new PageInfo<>(roleList);
        return pageInfo;
    }

    @Override
    public List<Role> queryList(Role role){
        return roleMapper.queryList(role);
    }
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void save(Role role) {
        role.setId(UuidUtil.get32UUID());
        role.setCreatetime(new Date());
        this.insert(role);
    }
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void update(Role role) {
        updateById(role);
    }
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void deleteBatch(String[] roleIds) {
        deleteBatchIds(Arrays.asList(roleIds));
    }
}

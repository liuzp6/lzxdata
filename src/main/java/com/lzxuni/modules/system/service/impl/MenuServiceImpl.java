
package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lzxuni.modules.system.entity.Menu;
import com.lzxuni.modules.system.mapper.MenuMapper;
import com.lzxuni.modules.system.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * MenuServiceImpl
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:43
 * @description 
 **/
@Service("menuService")
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> queryListByParentId(String parentId) {
        return menuMapper.queryListByParentId(parentId);
    }

    @Override
    public List<Menu> getTree(String parentId) {
        List<Menu> list = menuMapper.queryListByParentId(parentId);
        getTreeDg(list);
        return list;
    }

    private void getTreeDg(List<Menu> ztreeList){
        for (int i = 0; i < ztreeList.size(); i++) {
            Menu menu = ztreeList.get(i);
            ztreeList.get(i).setShowcheck(false);
            ztreeList.get(i).setCheckstate(0);
            ztreeList.get(i).setIsexpand(false);
            ztreeList.get(i).setComplete(true);
            List<Menu> tree = menuMapper.queryListByParentId(menu.getId());
            ztreeList.get(i).setChildNodes(tree);
            getTreeDg(tree);
        }
    }

}

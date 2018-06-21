
package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lzxuni.common.utils.GetPinyin;
import com.lzxuni.common.utils.UuidUtil;
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
    public List<Menu> queryListByParentId(String parentId,String type) {
        return menuMapper.queryListByParentId(parentId,type);
    }

    @Override
    public List<Menu> getTree(String parentId,String type) {
        List<Menu> list = menuMapper.queryListByParentId(parentId,type);
        getTreeDg(list,type);
        return list;
    }

    private void getTreeDg(List<Menu> ztreeList,String type){
        for (int i = 0; i < ztreeList.size(); i++) {
            Menu menu = ztreeList.get(i);
            ztreeList.get(i).setShowcheck(false);
            ztreeList.get(i).setCheckstate(0);
            ztreeList.get(i).setIsexpand(false);
            ztreeList.get(i).setComplete(true);
            List<Menu> tree = menuMapper.queryListByParentId(menu.getId(),type);
            ztreeList.get(i).setChildNodes(tree);
            getTreeDg(tree,type);
        }
    }
    @Override
    public void insertPermissions(Menu parentMenu) throws Exception {
        Menu ChildMenu = new Menu();
        String permissions[] = { "增加", "删除", "修改", "查询" };
        String percodes[] = { "insert", "del", "update", "select" };
        for (int i = 0; i < permissions.length; i++) {
            ChildMenu.setId(UuidUtil.get32UUID());
            ChildMenu.setSortNumber(i);
            ChildMenu.setIsLeaf("N");
            ChildMenu.setType("permission");
            ChildMenu.setName(permissions[i]);
            ChildMenu.setIcon("fa fa-wrench");
            ChildMenu.setParentId(parentMenu.getId());
            ChildMenu.setPercode(GetPinyin.getPinYinHeadChar(parentMenu.getName()) + ":" + percodes[i]);
            menuMapper.insert(ChildMenu);
        }
    }
//    private void updateIsLeafById(String parentId) throws Exception {
//        Menu menu = new Menu();
//        List<Menu> menuList = menuMapper.queryListByParentId(parentId,"");
//        if (menuList.size() == 4) {
//            menuMapper.update(menu,new EntityWrapper<Menu>().eq("is_leaf", "Y").where(true,"id"));
//        } else {
//            menuMapper.update(menu,new EntityWrapper<Menu>().eq("is_leaf", "N").where(true,"id"));
//        }
//    }
}

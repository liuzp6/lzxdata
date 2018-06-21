package com.lzxuni.modules.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.lzxuni.modules.system.entity.Menu;

import java.util.List;

/**
 * MenuService
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:42
 * @description 
 **/

public interface MenuService extends IService<Menu> {

    List<Menu> queryListByParentId(String parentId,String type) throws Exception;

    List<Menu> getTree(String parentId,String type) ;

    void insertPermissions(Menu menu) throws Exception;
}

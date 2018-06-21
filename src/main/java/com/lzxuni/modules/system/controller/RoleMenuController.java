package com.lzxuni.modules.system.controller;

import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.RoleMenu;
import com.lzxuni.modules.system.service.RoleMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * MenuController
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:19
 * @description 
 **/
@RestController
@RequestMapping("/admin/LR_OrganizationModule/RoleMenu")
public class RoleMenuController extends BaseController {

    @Autowired
    private RoleMenuService roleMenuService;

    /**
     *
     * @param strModuleId   菜单ID集合
     * @param strModuleButtonId     按钮ID集合
     * @param objectId      角色ID
     * @return
     * @throws Exception
     */
    // 新增角色和菜单对应表
    @RequestMapping("/SaveForm")
    public Object SaveForm(String strModuleId,String strModuleButtonId,String objectId) throws Exception{
        RoleMenu roleMenu = new RoleMenu();
        roleMenuService.deleteById(objectId);
        String[] strModuleButtonIds = strModuleButtonId.split(",");
        for(int i=0; i<strModuleButtonIds.length; i++){
            roleMenu.setId(UuidUtil.get32UUID());
            roleMenu.setRoleId(objectId);
            roleMenu.setMenuId(strModuleButtonIds[i]);
            roleMenuService.insert(roleMenu);
        }
        return R.ok("配置成功");
    }
}

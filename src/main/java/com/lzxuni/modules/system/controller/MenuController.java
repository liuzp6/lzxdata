package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.Menu;
import com.lzxuni.modules.system.entity.RoleMenu;
import com.lzxuni.modules.system.service.MenuService;
import com.lzxuni.modules.system.service.RoleMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

/**
 * MenuController
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:19
 * @description 
 **/
@RestController
@RequestMapping("/admin/LR_OrganizationModule/Menu")
public class MenuController extends BaseController {

    @Autowired
    private MenuService menuService;
    @Autowired
    private RoleMenuService roleMenuService;

    // 列表
    @RequestMapping("/index_v.html")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Menu/Index");
        return mv;
    }
    // 列表
    @RequestMapping("/index_o")
    public Object index_o(String parentId,String keyword,String type) throws Exception{
//        return R.ok(menuService.queryListByParentId(parentId));
        Menu menu = new Menu();
        menu.setParentId(parentId);
        menu.setType(type);
        List<Menu> menuList;
        if(StringUtils.isEmpty(keyword)){
            menuList = menuService.selectList(new EntityWrapper<Menu>().eq("parent_Id", menu.getParentId())
                    .eq("type", menu.getType())
                    .orderBy("sort_Number",true));
        }else{
            menu.setName(keyword);
            menuList = menuService.selectList(new EntityWrapper<Menu>().eq("parent_Id", menu.getParentId())
                    .eq("name", menu.getName())
                    .eq("type", menu.getType())
                    .orderBy("sort_Number",true));
        }

        return R.ok(menuList);
    }
    //获取树形结构菜单
    @RequestMapping("/GetTree")
    public Object queryListByParentId(String parentId) throws Exception {
        List<Menu> menuList = menuService.getTree(parentId,"menu");
        return R.ok(menuList);
    }
    // 新增、修改菜单页面
    @RequestMapping("/Form_v")
    public ModelAndView Form_v() {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Menu/Form");
        return mv;
    }
    //选取图标页面
    @RequestMapping("/Icon_v")
    public ModelAndView Icon_v() {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Menu/Icon");
        return mv;
    }
    //根据ID获取菜单数据
    @RequestMapping("/GetFormData")
    public Object GetFormData(String keyValue) throws Exception {
        Menu menu = menuService.selectById(keyValue);
        Map<String,Object> map = new HashMap();
        map.put("moduleEntity",menu);
        map.put("moduleButtons","");
        map.put("moduleColumns","");
        return R.ok(map);
    }
    // 新增、修改处理菜单页面
    @RequestMapping("/Form_o")
    public Object Form_v(String moduleEntityJson) throws Exception{
        Menu menu = JSON.parseObject(moduleEntityJson, Menu.class);
        menu.setType("menu");
        if(StringUtils.isEmpty(menu.getId())){
            String id = UuidUtil.get32UUID();
            menu.setId(id);
            menu.setCreatetime(new Date());
            menu.setIsLeaf("Y");
            //判断当前菜单是否有下一级菜单
            List<Menu> menuList = menuService.selectList(new EntityWrapper<Menu>().eq("parent_Id", menu.getId())
                    .eq("type", menu.getType()));
            if(menuList != null && menuList.size() != 0){}else{
                menu.setIsLeaf("N");
                //插入增删改查权限
                menuService.insertPermissions(menu);
            }
            menuService.insert(menu);
            return R.ok("新增成功");
        }else{
            menuService.updateById(menu);
            return R.ok("修改成功");
        }
    }
    // 新增、修改按钮页面
    @RequestMapping("/ButtonForm_v")
    public ModelAndView ButtonForm_v() {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Menu/ButtonForm");
        return mv;
    }
    // 删除
    @RequestMapping("/DeleteForm")
    public Object DeleteForm(String keyValue) {
        menuService.deleteById(keyValue);
        return R.ok("删除成功");
    }
    //获取树形结构菜单(带复选框)，给角色授权菜单时用
    @RequestMapping("/GetCheckTree")
    public Object GetCheckTree() throws Exception {
        //菜单复选框集合
        List<Menu> moduleList = menuService.getTree("0","menu");
        //按钮复选框集合
        List<Menu> buttonList = menuService.getTree("0","");
        //给菜单树增加复选框
        moduleList = getMenuCheckList(moduleList);
        //给按钮树增加复选框
        buttonList = getMenuButtonCheckList(buttonList);
        Map<String,Object> map = new HashMap();
        map.put("moduleList",moduleList);
        map.put("buttonList",buttonList);
        map.put("columnList","");
        return R.ok(map);
    }
    //获取树形结构菜单(带复选框)，给角色授权菜单时用。已经选中的ID集合。
    @RequestMapping("/GetFormData2")
    public Object GetFormData2(String objectId) throws Exception {
        List<RoleMenu> roleMenuList = roleMenuService.selectList(new EntityWrapper<RoleMenu>().eq("role_id", objectId));
        List<String> modules = new ArrayList<>();
        for(int i=0; i<roleMenuList.size(); i++){
            modules.add(roleMenuList.get(i).getMenuId());
        }
        Map<String,Object> map = new HashMap();
        map.put("modules",modules);
        map.put("columns","");
        map.put("buttons",modules);
        return R.ok(map);
    }

    /**
     * 以下是公共方法区
     */
    //给菜单集合中树形结构增加复选框公共方法
    public List<Menu> getMenuCheckList(List<Menu> menuList){
        for(int i=0;i<menuList.size();i++){
            //给一级菜单增加复选框
            getMenuCheck( menuList.get(i));
            //判断一级菜单下是否有二级菜单
            if(menuList.get(i).getChildNodes().size() > 0){
                //给二级菜单增加复选框
                for(int j=0; j<menuList.get(i).getChildNodes().size(); j++){
                    getMenuCheck(menuList.get(i).getChildNodes().get(j));
                    //判断二级菜单下是否有三级菜单
                    if(menuList.get(i).getChildNodes().get(j).getChildNodes().size() > 0){
                        //给三级菜单增加复选框
                        for(int k=0; k<menuList.get(i).getChildNodes().get(j).getChildNodes().size(); k++){
                            getMenuCheck(menuList.get(i).getChildNodes().get(j).getChildNodes().get(k));
                        }
                    }
                }
            }
        }
        return menuList;
    }
    //给按钮集合中树形结构增加复选框公共方法
    public List<Menu> getMenuButtonCheckList(List<Menu> menuList){
        //循环整个菜单集合
        for(int i=0;i<menuList.size();i++){
            //给一级菜单增加复选框
            getMenuCheck(menuList.get(i));
            //去掉一级菜单的增删改查权限按钮
            if(menuList.get(i).getChildNodes().size() != 4){
                getMenuListNoPermission(menuList.get(i).getChildNodes());
            }
            //循环二级菜单
            for(int j=0; j<menuList.get(i).getChildNodes().size(); j++){
                //给二级菜单增加复选框
                getMenuCheck(menuList.get(i).getChildNodes().get(j));
                //去掉二级菜单的增删改查权限按钮
                if(menuList.get(i).getChildNodes().get(j).getChildNodes().size() != 4){
                    getMenuListNoPermission(menuList.get(i).getChildNodes().get(j).getChildNodes());
                }
                //循环三级菜单
                for(int k=0; k<menuList.get(i).getChildNodes().get(j).getChildNodes().size(); k++){
                    //给三级菜单增加复选框
                    getMenuCheck(menuList.get(i).getChildNodes().get(j).getChildNodes().get(k));
                    //循环四级菜单
                    for(int q=0; q<menuList.get(i).getChildNodes().get(j).getChildNodes().get(k).getChildNodes().size(); q++){
                        //给四级菜单增加复选框
                        getMenuCheck(menuList.get(i).getChildNodes().get(j).getChildNodes().get(k).getChildNodes().get(q));
                    }
                }
            }
        }
        return menuList;
    }
    //给集合中树形结构增加复选框公共方法
    public Menu getMenuCheck(Menu menu){
        menu.setShowcheck(true);
        menu.setCheckstate(0);
        menu.setIsexpand(true);
        menu.setComplete(true);
        return menu;
    }
    //去掉菜单树的增删改查权限按钮
    public List<Menu> getMenuListNoPermission(List<Menu> menuList){
        List<Menu> menuPersionList = menuService.getTree("", "permission");
        for (int j = 0; j < menuPersionList.size(); j++) {
            Iterator<Menu> it = menuList.iterator();
            while (it.hasNext()) {
                Menu menu = it.next();
                if (menu.getId().equals(menuPersionList.get(j).getId())) {
                    it.remove(); // 移除该对象
                    System.out.println("menuid"+menu.getId());
                }
            }
        }
        return menuList;
    }
}

package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.Menu;
import com.lzxuni.modules.system.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    // 列表
    @RequestMapping("/index_v.html")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Menu/Index");
        return mv;
    }
    // 列表
    @RequestMapping("/index_o")
    public Object index_o(String parentId,String keyword) throws Exception{
//        return R.ok(menuService.queryListByParentId(parentId));
        Menu menu = new Menu();
        menu.setParentId(parentId);
        List<Menu> menuList;
        if(StringUtils.isEmpty(keyword)){
           menuList = menuService.selectList(new EntityWrapper<Menu>().eq("parent_Id", menu.getParentId()));
        }else{
            menu.setName(keyword);
            menuList = menuService.selectList(new EntityWrapper<Menu>().eq("parent_Id", menu.getParentId())
                    .eq("name", menu.getName()));
        }

        return R.ok(menuList);
    }
    //获取树形结构菜单
    @RequestMapping("/GetTree")
    public Object queryListByParentId(String parentId) throws Exception {
        List<Menu> menuList = menuService.getTree(parentId);
        return R.ok(menuList);
    }
    // 新增、修改页面
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
    //根据ID获取数据
    @RequestMapping("/GetFormData")
    public Object GetFormData(String keyValue) throws Exception {
        Menu menu = menuService.selectById(keyValue);
        Map<String,Object> map = new HashMap();
        map.put("moduleEntity",menu);
        map.put("moduleButtons","");
        map.put("moduleColumns","");
        return R.ok(map);
    }
    // 新增、修改处理页面
    @RequestMapping("/Form_o")
    public Object Form_v(String moduleEntityJson) {
        Menu menu = JSON.parseObject(moduleEntityJson, Menu.class);
        menu.setType("menu");
        if(StringUtils.isEmpty(menu.getId())){
            menu.setCreatetime(new Date());
            menuService.insert(menu);
            return R.ok("新增成功");
        }else{
            menuService.updateById(menu);
            return R.ok("修改成功");
        }
    }
}

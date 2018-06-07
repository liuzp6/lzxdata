package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.common.entity.PageData;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.Role;
import com.lzxuni.modules.system.entity.User;
import com.lzxuni.modules.system.service.RoleService;
import com.lzxuni.modules.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * RoleController
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:19
 * @description 
 **/
@RestController
@RequestMapping("/admin/LR_OrganizationModule/Role")
public class RoleController extends BaseController {

    @Autowired
    private RoleService roleService;
    @Autowired
    private UserService userService;

    // 列表
    @RequestMapping("/index_v.html")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Role/index");
        return mv;
    }
    // 列表
    @RequestMapping("/index_o.html")
    public Object index_o(String pagination,
                          String queryJson) throws Exception{
        PageParameter pageParameter = JSON.parseObject(pagination, PageParameter.class);
        Role role = JSON.parseObject(queryJson, Role.class);
        if (role == null) {
            role = new Role();
        }
        PageData pageData = getPageData(roleService.queryPage(pageParameter, role));
        return R.ok(pageData);
    }
    // 新增,修改
    @RequestMapping("/insert_v.html")
    public ModelAndView insert() throws Exception{
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Role/Form");
        return mv;
    }
    // 新增,修改 处理
    @RequestMapping("/insert_o.html")
    public Object insertDo(Role role) throws Exception {

        if(StringUtils.isEmpty(role.getId())){
            role.setId(UuidUtil.get32UUID());
            role.setCreatetime(new Date());
            roleService.insert(role);
            return R.ok("新增成功");
        }else{
            roleService.updateById(role);
            return R.ok("修改成功");
        }
    }
    //删除
    @RequestMapping("/delete_o.html")
    public Object delete(@RequestParam("keyValue")String[] roleIds){
        roleService.deleteBatch(roleIds);
        return  R.ok("删除成功");
    }
    // 添加角色成员
    @RequestMapping("/select_v.html")
    public ModelAndView select_v() throws Exception{
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Role/SelectForm");
        return mv;
    }
    //根据角色查询所属用户
    @RequestMapping("/getUser_o.html")
    public Object getUser_o(String objectId)throws Exception{
        List<String> userIds = roleService.queryUserIdsByRoleId(objectId);
        List<User> userInfoList = userService.queryByRoleId(objectId);
        Map<String,Object> map = new HashMap();
        map.put("userids",userIds);
        map.put("userInfoList",userInfoList);
        Object o = new Object();
        return  R.ok(map);
    }
}

package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.utils.R;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.Role;
import com.lzxuni.modules.system.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
    // 列表
    @RequestMapping("/index_v.html")
    public ModelAndView list() {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Role/index");
        return mv;
    }
    // 列表
    @RequestMapping("/index_o.html")
    public Object index_o(PageParameter pageParameter,
                          String queryJson) throws Exception{
        Role role = JSON.parseObject(queryJson, Role.class);
        if (role == null) {
            role = new Role();
        }
        pageParameter.setPage(1);
        pageParameter.setRows(10);
        pageParameter.setSord("desc");
        pageParameter.setSidx("createtime");
        return getPageData(roleService.queryPage(pageParameter, role));
//        return R.ok(roleService.queryList(role));
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
        roleService.save(role);
        return R.ok("修改成功");
    }
}

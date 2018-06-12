package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.common.entity.PageData;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.*;
import com.lzxuni.modules.system.service.*;
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
    private RoleUserService roleUserService;
    @Autowired
    private UserService userService;
    @Autowired
    private DeptService deptService;
    @Autowired
    private CompanyService companyService;

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
    //根据角色ID查询所属用户
    @RequestMapping("/getUser_o.html")
    public Object getUser_o(String objectId)throws Exception{
        //获取当前角色下用户ID集合
        List<String> userIdList = roleService.queryUserIdsByRoleId(objectId);
        //把用户ID集合拼成“，”间隔字符串
        String userIds = "";
        for(int i=0 ; i<userIdList.size(); i++){
            userIds += userIdList.get(i) + ",";
        }
        if(userIds != "" && userIds !=null ){
            userIds = userIds.substring(0,userIds.length()-1);
        }
        //获取当前角色下用户集合并往用户集合中放入公司名称和部门名称
        List<User> userInfoList = getUserList(userService.queryByRoleId(objectId));
        //把所有信息放入map中返回
        Map<String,Object> map = new HashMap();
        map.put("userIds",userIds);
        map.put("userInfoList",userInfoList);
        return  R.ok(map);
    }
    //根据公司ID和部门ID查询所属用户
    @RequestMapping("/getUser2_o.html")
    public Object getUser2_o(User user)throws Exception{
        //往用户集合中放入公司名称和部门名称
        List<User> userList = getUserList(userService.queryList(user));
        return  R.ok(userList);
    }
    //往往用户集合中放入公司名称和部门名称的公共方法
    public List<User> getUserList(List<User> userList)throws Exception{
        for(int i=0 ; i<userList.size(); i++){
            Dept dept = deptService.queryObject(userList.get(i).getDeptId());
            userList.get(i).setDeptName(dept.getName());
            Company company = companyService.queryObject(userList.get(i).getCompanyId());
            userList.get(i).setCompanyName(company.getName());
        }
        return userList;
    }
    // 添加人员处理
    @RequestMapping("/form_o")
    public Object form_o(String objectId,String userIds) throws Exception {
        roleUserService.deleteUserRoleByRoleId(objectId);
        String[] userid;
        userid = userIds.split(",");
        for(int i=0;i<userid.length;i++){
            RoleUser roleUser = new RoleUser();
            roleUser.setRoleId(objectId);
            roleUser.setUserId(userid[i]);
            roleUserService.insert(roleUser);
            System.out.println(roleUser);
        }
        return R.ok("修改成功");
    }
    // 查看角色成员
    @RequestMapping("/form_v")
    public ModelAndView form_v() throws Exception{
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Role/LookForm");
        return mv;
    }
}

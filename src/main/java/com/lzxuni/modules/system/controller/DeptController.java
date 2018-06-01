package com.lzxuni.modules.system.controller;


import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.Dept;
import com.lzxuni.modules.system.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/admin/LR_OrganizationModule/Dept")
public class DeptController extends BaseController {
	@Autowired
	private DeptService deptService;
	// 列表
	@RequestMapping("/index_v.html")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Dept/index");
		return mv;
	}
	// 部门列表
	@RequestMapping("/GetList.html")
	public Object listDo(String companyId,String checkId) throws Exception {
		// 分页
		List<Dept> deptList = deptService.getList(new ArrayList<>(),"0",companyId);
		List<Dept> deptList2= new ArrayList<>() ;
		for (int i = deptList.size(); i > 0; i--) {
			if(deptList.get(i-1).getId().equals(checkId)){
				deptList.get(i-1).setChecked("true");
			}
			deptList2.add(deptList.get(i-1)) ;
		}
		return R.ok(deptList2);
	}
	// 根据parentId查找
	@RequestMapping("/GetTree.html")
	public Object queryListByParentId(String parentId,String companyId) throws Exception {
		parentId = StringUtils.isEmpty(parentId) ? "0" : parentId;
		List<Dept> companyList = deptService.getTree(parentId,companyId);
		return R.ok(companyList);
	}

	// 添加展示页面
	@RequestMapping("/Form.html")
	public ModelAndView insert(String parentId) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Dept/Form");
		Dept deptParent = deptService.queryObject(parentId);
		mv.addObject("deptParent" ,deptParent) ;
		return mv;
	}
	@RequestMapping("/SaveForm.html")
	public Object insertDo(Dept dept) throws Exception {
		if(StringUtils.isEmpty(dept.getId())){
			deptService.insert(dept);
			return R.ok("保存成功");
		}else{
			Dept companyParentOld = deptService.queryObject(dept.getParentId());
			deptService.update(dept,companyParentOld);
			return R.ok("修改成功");
		}
	}

	//公司管理删除
	@RequestMapping("/DeleteForm.html")
	public Object delete(String id) throws Exception {
		deptService.del(id);
		return R.ok("删除成功");
	}



}
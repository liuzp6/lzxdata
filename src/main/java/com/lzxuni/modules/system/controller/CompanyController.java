package com.lzxuni.modules.system.controller;


import com.lzxuni.common.utils.JsonResultUtil;
import com.lzxuni.common.utils.R;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.Company;
import com.lzxuni.modules.system.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/admin/LR_OrganizationModule/Company")
public class CompanyController extends BaseController {
	@Autowired
	private CompanyService companyService;
	// 列表
	@RequestMapping("/index_v.html")
	public ModelAndView list() {
		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Company/index");
		return mv;
	}
	// 部门列表
	@RequestMapping("/GetList.html")
	public Object listDo(String checkId) throws Exception {
		// 分页
		List<Company> deptList = companyService.getList(new ArrayList<>(),"0");
		List<Company> deptList2= new ArrayList<>() ;
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
	public Object queryListByParentId(String parentId) throws Exception {
		List<Company> companyList = companyService.getTree(parentId);
		return R.ok(companyList);
//		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Company/GetTree");
//		return mv;
	}

	// 添加展示页面
	@RequestMapping("/Form.html")
	public ModelAndView insert(String parentId) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Company/Form");
		Company deptParent = companyService.queryObject(parentId);
		mv.addObject("deptParent" ,deptParent) ;
		return mv;
	}
	@RequestMapping("/SaveForm.html")
	public Object insertDo(Company company) throws Exception {
		companyService.insert(company);
		return R.ok("保存成功");
	}

	@RequestMapping("/update_v.html")
	public ModelAndView update(String id) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/system/company/update");

		Company company = companyService.queryObject(id);
		Company companyParent = companyService.queryObject(company.getParentId());

		mv.addObject("company", company);
		mv.addObject("companyParent", companyParent);
		return mv;
	}
	// 公司修改处理
	@RequestMapping("/update_o.html")
	public Object updateDo(Company company) throws Exception {
		Company companyParentOld = companyService.queryObject(company.getParentId());
		companyService.update(company,companyParentOld);
		return JsonResultUtil.getSuccessJson("成功！");
	}
	//公司管理删除
	@RequestMapping("/DeleteForm.html")
	public Object delete(String id) throws Exception {
		companyService.delete(id);
		return R.ok("删除成功");
	}


	/*部门列表公司树形菜单*/
	@RequestMapping("/tree4dept.html")
	public Object tree4dept() throws Exception {
		List<Company> treeList = companyService.getList(new ArrayList<>(),"-1");
		List<Company> listNew= new ArrayList<>() ;
		for (int i = treeList.size(); i > 0; i--) {
			if (treeList.get(i-1).getIsLeaf().equals("false")) { // 父节点加载列表

				treeList.get(i-1).setOpen("true");
			} else { // 加载修改
				treeList.get(i-1).setOpen("false");
			}
			if(treeList.get(i-1).getParentId().equals("-1")){
				treeList.get(i-1).setClick(false);
			}

			listNew.add(treeList.get(i-1)) ;
		}
		return listNew;
	}
	/*用户列表公司树形菜单*/
	@RequestMapping("/tree4user.html")
	public Object tree4user() throws Exception {
		List<Company> treeList = companyService.getList(new ArrayList<>(),"-1");
		List<Company> listNew= new ArrayList<>() ;
		for (int i = treeList.size(); i > 0; i--) {
			if (treeList.get(i-1).getIsLeaf().equals("false")) { // 父节点加载列表
				treeList.get(i-1).setOpen("true");
			} else { // 加载修改
				treeList.get(i-1).setOpen("false");
			}
			listNew.add(treeList.get(i-1)) ;
		}
		return listNew;
	}

}
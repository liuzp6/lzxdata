package com.lzxuni.modules.sys.controller;


import com.lzxuni.common.utils.JsonResultUtil;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.sys.entity.Company;
import com.lzxuni.modules.sys.service.CompanyService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/admin/system/company")
public class CompanyController extends BaseController {
	@Autowired
	private CompanyService companyService;
	// 列表
	@RequestMapping("/list_v.html")
	public ModelAndView list() throws Exception {
		ModelAndView mv = new ModelAndView("/admin/system/company/list");
		return mv;
	}
	// 部门列表
	@RequestMapping("/list_o.html")
	public Object listDo(String checkId) throws Exception {
		// 分页
		//List<Company> deptList = companyService.queryListAll() ;
		List<Company> deptList = companyService.getTree(new ArrayList<>(),"-1");
		List<Company> deptList2= new ArrayList<>() ;
		for (int i = deptList.size(); i > 0; i--) {
			if(deptList.get(i-1).getId().equals(checkId)){
				deptList.get(i-1).setChecked("true");
			}
			deptList2.add(deptList.get(i-1)) ;
		}
		return deptList2 ;
	}
	// 根据parentId查找
	@RequestMapping("/queryListByParentId.html")
	public List<Company> queryListByParentId(String parentId) throws Exception {
		return companyService.queryListByParentId(parentId);
	}

	// 添加展示页面
	@RequestMapping("/insert_v.html")
	public ModelAndView insert(String parentId) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/system/company/insert");
		Company deptParent = companyService.queryObject(parentId);
		mv.addObject("deptParent" ,deptParent) ;
		return mv;
	}
	@RequiresPermissions("gsgl:insert")
	@RequestMapping("/insert_o.html")
	public Object insertDo(Company company) throws Exception {
		companyService.insert(company);
		return JsonResultUtil.getSuccessJson("成功！");
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
	@RequestMapping("/delete_o.html")
	public Object delete(String id) throws Exception {
		companyService.delete(id);
		return JsonResultUtil.getSuccessJson("成功！");
	}


	/*部门列表公司树形菜单*/
	@RequestMapping("/tree4dept.html")
	public Object tree4dept() throws Exception {
		List<Company> treeList = companyService.getTree(new ArrayList<>(),"-1");
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
		List<Company> treeList = companyService.getTree(new ArrayList<>(),"-1");
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
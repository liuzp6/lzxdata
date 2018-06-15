package com.lzxuni.modules.system.service.impl;

import com.lzxuni.common.utils.MethodUtil;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.system.entity.Company;
import com.lzxuni.modules.system.entity.Post;
import com.lzxuni.modules.system.mapper.CompanyMapper;
import com.lzxuni.modules.system.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * <b>功能：</b> <br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年6月4日 上午10:30:14
 * @version 1.0 <br>
 */
@Service("companyService")
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyMapper companyMapper;

	//第一种递归读取公司信息，为了ztree
	@Override
	public List<Company> getList(List<Company> ztreeList, String parentId) throws Exception {
		List<Company> list = companyMapper.queryListByParentId(parentId);
		for (int i = 0; i < list.size(); i++) {
			Company company = list.get(i);
			getList(ztreeList, company.getId());
			ztreeList.add(company) ;
		}
		return ztreeList;
	}
	@Override
	public List<Company> getTree(String parentId) {
		List<Company> list = companyMapper.queryListByParentId(parentId);
		getTreeDg(list);
		return list;
	}

	private void getTreeDg(List<Company> ztreeList){
		for (int i = 0; i < ztreeList.size(); i++) {
			Company company = ztreeList.get(i);
			ztreeList.get(i).setShowcheck(false);
			ztreeList.get(i).setCheckstate(0);
			ztreeList.get(i).setIsexpand(true);
			ztreeList.get(i).setComplete(true);
			List<Company> tree = companyMapper.queryListByParentId(company.getId());
			ztreeList.get(i).setChildNodes(tree);
			getTreeDg(tree);
		}
	}


	@Override
	public Company queryObject(String id) throws Exception {
		return companyMapper.queryObject(id);
	}
	@Override
	public List<Company> queryListByParentId(String parentId) {
		return companyMapper.queryListByParentId(parentId);
	}

	@Override
	public void insert(Company company) throws Exception {
		Company companyParent = companyMapper.queryObject(company.getParentId());
		company.setId(UuidUtil.get32UUID());
		company.setCreateTime(MethodUtil.getDate(1, null));
		company.setHasChildren(false);
		if(companyParent==null){
			company.setLevel(1);
		}else{
			company.setLevel(companyParent.getLevel()+1);
			companyMapper.updateHasChildren(true, company.getParentId());
		}
		companyMapper.insert(company);
	}

	@Override
	public void delete(String id) throws Exception {

		Company company= companyMapper.queryObject(id) ;
		Company companyParent = companyMapper.queryObject(company.getParentId()) ;
		if(companyParent!=null){
			List<Company> deptList = companyMapper.queryListByParentId(companyParent.getId()) ;
			if(deptList!=null && deptList.size()==1){
				companyMapper.updateHasChildren(false,companyParent.getId());
			}
		}
		companyMapper.delete(id) ;
	}

	@Override
	public void update(Company company,Company companyParentOld) throws Exception {
		Company companyParentNew = companyMapper.queryObject(company.getParentId()) ;
		Integer level = 1;
		List<Company> companyList2 = new ArrayList<>();
		if(companyParentOld!=null){
			companyList2 = companyMapper.queryListByParentId(companyParentOld.getId()) ;
			if(companyList2!=null && companyList2.size()==0){
				companyMapper.updateHasChildren(false,companyParentOld.getId()) ;
			}
		}
		if(companyParentNew!=null){
			companyMapper.updateHasChildren(true,companyParentOld.getId()) ;
			level = companyParentNew.getLevel()+1;
		}
		company.setLevel(level);
		updateCompanyLevel(company);
		companyMapper.update(company) ;
	}
	private void updateCompanyLevel(Company company){
		List<Company> companyList = companyMapper.queryListByParentId(company.getId()) ;
		for (int i = 0; i < companyList.size(); i++) {
			Company Company2 = companyList.get(i) ;
			Company2.setLevel(company.getLevel()+1);
			companyMapper.update(Company2) ;
			updateCompanyLevel(Company2);
		}
	}

	private void findCompanyDdByCompany(Company company){
		//List<Company> childCompanyList = CompanyMapper.queryListByParentId(parentId) ;
		List<Company> childCompanyList = companyMapper.queryListByParentId(company.getId()) ;
		company.setChildNodes(childCompanyList);
		for (int i = 0; i < childCompanyList.size(); i++) {
			//findCompanyDdByCompany(childCompanyList.get(i));
		}
	}
}

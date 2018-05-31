package com.lzxuni.modules.system.service.impl;

import com.lzxuni.common.utils.MethodUtil;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.system.entity.Company;
import com.lzxuni.modules.system.mapper.CompanyMapper;
import com.lzxuni.modules.system.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
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

	private Integer totle ;

	//第一种递归读取公司信息，为了ztree
	@Override
	public List<Company> getList(List<Company> ztreeList, String parentId) throws Exception {
		List<Company> list = companyMapper.queryListByParentId(parentId);
		for (int i = 0; i < list.size(); i++) {
			Company company = list.get(i);
			if(totle==null){
				totle = 0;
			}
			totle=totle+1 ;
			company.setLft(totle);
			company.setExpanded("true");

			String flag = company.getIsLeaf().equals("true")?"false":"true" ;
			company.setIsParent(flag);
			company.setOpen(flag);

			getList(ztreeList, company.getId());

			totle=totle+1 ;
			company.setRgt(totle); //4
			ztreeList.add(company) ;
		}
		return ztreeList;
	}
	@Override
	public List<Company> getTree(String parentId) {
		List<Company> list = companyMapper.queryListByParentId(parentId);
		for (int i = 0; i < list.size(); i++) {
			Company company = list.get(i);
			company.setShowcheck(false);
			company.setCheckstate(0);
			company.setHasChildren(true);
			company.setIsexpand(true);
			company.setComplete(true);
			String flag = company.getIsLeaf().equals("true")?"false":"true" ;

			List<Company> tree = companyMapper.queryListByParentId(company.getId());
			for (int j = 0; j < tree.size(); j++) {
				tree.get(j).setShowcheck(false);
				tree.get(j).setCheckstate(0);
				tree.get(j).setHasChildren(false);
				tree.get(j).setIsexpand(true);
				tree.get(j).setComplete(true);
			}
			list.get(i).setChildCompanyList(tree);

		}
		return list;
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
		company.setIsLeaf("true");
		company.setLevel(companyParent.getLevel()+1);
		companyParent.setIsLeaf("false");
		companyMapper.update(companyParent) ;
		companyMapper.insert(company);
	}

	@Override
	public void delete(String id) throws Exception {
		
		Company company = companyMapper.queryObject(id) ;
		Company companyParent = companyMapper.queryObject(company.getParentId()) ;
		List<Company> companyList = companyMapper.queryListByParentId(companyParent.getId()) ;
		companyMapper.delete(id) ;
		if(companyList.size()==1){
			companyParent.setIsLeaf("true");
			companyMapper.update(companyParent) ;
		}
	}

	@Override
	public void update(Company company,Company companyParentOld) throws Exception {
		Company companyParentNew = companyMapper.queryObject(company.getParentId()) ;
		Integer level = 1;
		List<Company> companyList2 = new ArrayList<>();
		if(companyParentOld!=null){
			companyList2 = companyMapper.queryListByParentId(companyParentOld.getId()) ;
			if(companyList2!=null && companyList2.size()==0){
				companyParentOld.setIsLeaf("true");
				companyMapper.update(companyParentOld) ;
			}
		}
		if(companyParentNew!=null){
			companyParentNew.setIsLeaf("false");
			companyMapper.update(companyParentNew) ;
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
		company.setChildCompanyList(childCompanyList);
		for (int i = 0; i < childCompanyList.size(); i++) {
			//findCompanyDdByCompany(childCompanyList.get(i));
		}
	}
}

package com.lzxuni.modules.system.service.impl;

import com.lzxuni.common.utils.MethodUtil;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.system.entity.Company;
import com.lzxuni.modules.system.entity.Dept;
import com.lzxuni.modules.system.mapper.DeptMapper;
import com.lzxuni.modules.system.service.DeptService;
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
@Service("deptService")
public class DeptServiceImpl implements DeptService {
	@Autowired
	private DeptMapper deptMapper;

	private Integer totle = null;
	//第一种递归读取部门信息，为了ztree
	@Override
	public List<Dept> getList(List<Dept> ztreeList, String parentId, String companyId) throws Exception {
		List<Dept> list = deptMapper.queryListByParentId(parentId,companyId);
		for (int i = 0; i < list.size(); i++) {
			Dept dept = list.get(i);
			getList(ztreeList, dept.getId(),companyId);
			ztreeList.add(dept) ;
		}
		return ztreeList;
	}
	@Override
	public List<Dept> getTree(String parentId,String companyId) {
		List<Dept> list = deptMapper.queryListByParentId(parentId,companyId);
		getTreeDg(list,companyId);
		return list;
	}

	private void getTreeDg(List<Dept> ztreeList,String companyId){
		for (int i = 0; i < ztreeList.size(); i++) {
			Dept dept = ztreeList.get(i);
			ztreeList.get(i).setShowcheck(false);
			ztreeList.get(i).setCheckstate(0);
			ztreeList.get(i).setIsexpand(true);
			ztreeList.get(i).setComplete(true);
			List<Dept> tree = deptMapper.queryListByParentId(dept.getId(),companyId);
			ztreeList.get(i).setChildNodes(tree);
			getTreeDg(tree,companyId);
		}
	}
	@Override
	public Dept queryObject(String id) throws Exception {
		return deptMapper.queryObject(id);
	}
	@Override
	public List<Dept> queryListByParentId(String parentId,String companyId) {
		return deptMapper.queryListByParentId(parentId,companyId);
	}

	@Override
	public void insert(Dept dept) throws Exception {
		Dept deptParent = deptMapper.queryObject(dept.getParentId());
		dept.setId(UuidUtil.get32UUID());
		dept.setCreateTime(MethodUtil.getDate(1, null));
		dept.setHasChildren(false);


		if(deptParent==null){
			dept.setLevel(1);
		}else{
			dept.setLevel(deptParent.getLevel()+1);
			deptMapper.updateHasChildren(true, dept.getParentId());
		}
		deptMapper.insert(dept);
	}

	@Override
	public void del(String id) throws Exception {
		Dept dept = deptMapper.queryObject(id) ;
		Dept deptParent = deptMapper.queryObject(dept.getParentId()) ;
		if(deptParent!=null){
			List<Dept> deptList = deptMapper.queryListByParentId(deptParent.getId(),dept.getCompanyId()) ;
			if(deptList!=null && deptList.size()==1){
				deptMapper.updateHasChildren(false,deptParent.getId());
			}
		}
		deptMapper.delete(id) ;
	}

	@Override
	public void update(Dept dept,Dept deptParentOld) throws Exception {
		Dept deptParentNew = deptMapper.queryObject(dept.getParentId()) ;
		Integer level = 1;
		List<Dept> deptList2 = new ArrayList<>();
		if(deptParentOld!=null){
			deptList2 = deptMapper.queryListByParentId(deptParentOld.getId(),dept.getCompanyId()) ;
			if(deptList2!=null && deptList2.size()==0){
				deptMapper.updateHasChildren(false,deptParentOld.getId()) ;
			}
		}
		if(deptParentNew!=null){
			deptMapper.updateHasChildren(true,deptParentOld.getId()) ;
			level = deptParentNew.getLevel()+1;
		}
		dept.setLevel(level);
		updateDeptLevel(dept);
		deptMapper.update(dept) ;
	}

	private void updateDeptLevel(Dept dept) throws Exception{
		List<Dept> deptList = deptMapper.queryListByParentId(dept.getId(),dept.getCompanyId()) ;
		for (int i = 0; i < deptList.size(); i++) {
			Dept dept2 = deptList.get(i) ;
			dept2.setLevel(dept.getLevel()+1);
			deptMapper.update(dept2) ;
			updateDeptLevel(dept2);
		}
	}
}

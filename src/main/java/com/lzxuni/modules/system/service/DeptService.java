package com.lzxuni.modules.system.service;


import com.lzxuni.modules.system.entity.Dept;

import java.util.List;

/**
 *@Title DeptService.java
 *@description TODO
 *@author 孙志强
 *@time 2016年11月4日 下午4:50:40
 *@version 1.0
 **/
public interface DeptService {

	List<Dept> getList(List<Dept> deptList, String parentId, String companyId) throws Exception;
	//下拉框
	List<Dept> getTree(String parentId,String companyId) ;
	//查询所有
	List<Dept> queryListByParentId(String parentId, String companyId) ;
	//根据部门id查询部门
	Dept queryObject(String id) throws Exception ;
	//插入部门
	void insert(Dept dept) throws Exception ;
	//删除部门
	void del(String id) throws Exception ;
	//修改部门主题信息
	void update(Dept dept, Dept deptParentOld) throws Exception ;

}

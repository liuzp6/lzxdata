package com.lzxuni.modules.system.service;


import com.lzxuni.modules.system.entity.Company;

import java.util.List;

/**
 * 功能描述: <br>
 * @Author 孙志强
 * @date 2018/3/19 12:20
*/
public interface CompanyService {
	//列表
	List<Company> getList(List<Company> companyList, String parentId) throws Exception;
	//下拉框
	List<Company> getTree(String parentId) ;


	List<Company> queryListByParentId(String parentId) ;

	//根据id查询
	Company queryObject(String id) throws Exception ;
	//插入
	void insert(Company company) throws Exception ;
	//删除
	void delete(String id) throws Exception ;
	//修改
	void update(Company company, Company companyParentOld) throws Exception ;

}

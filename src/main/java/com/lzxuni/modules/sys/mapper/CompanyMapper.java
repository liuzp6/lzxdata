package com.lzxuni.modules.sys.mapper;


import com.lzxuni.modules.sys.entity.Company;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


/**
 *@Title CompanyMapper.java
 *@description 
 *@author 孙志强
 *@time 2016年11月4日 下午3:57:10
 *@version 1.0
 **/
@Mapper
public interface CompanyMapper {
	
	List<Company> queryListByParentId(String parentId) ;
	void insert(Company t);


	int update(Company t);


	int delete(Object id);



	Company queryObject(Object id);

	List<Company> queryList(Object id);


}

package com.lzxuni.modules.system.mapper;


import com.lzxuni.modules.system.entity.Company;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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
	int updateHasChildren(@Param("hasChildren") Boolean hasChildren, @Param("id")String id);


	int delete(Object id);

	Company queryObject(Object id);

}

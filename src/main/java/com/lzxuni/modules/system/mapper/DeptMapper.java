package com.lzxuni.modules.system.mapper;


import com.lzxuni.modules.system.entity.Dept;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 *@Title DeptMapper.java
 *@description 
 *@author 孙志强
 *@time 2016年11月4日 下午3:57:10
 *@version 1.0
 **/
@Mapper
public interface DeptMapper {
	List<Dept> queryListByParentId(@Param("parentId") String parentId, @Param("companyId") String companyId) ;
	void insert(Dept t);


	int update(Dept t);
	void updateHasChildren(@Param("hasChildren") Boolean hasChildren, @Param("id")String id);


	int delete(String id);

	Dept queryObject(Object id);
}

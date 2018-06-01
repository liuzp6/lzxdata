package com.lzxuni.modules.system.mapper;


import com.lzxuni.modules.system.entity.Post;
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
public interface PostMapper{
	List<Post> queryListByParentId(@Param("parentId") String parentId,@Param("deptId") String deptId, @Param("companyId") String companyId) ;

	Post queryObject(String id);

	void insert(Post post);
	void update(Post post);
	void updateHasChildren(@Param("hasChildren") Boolean hasChildren, @Param("id")String id);
	void delete(String is);

}

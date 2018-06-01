package com.lzxuni.modules.system.mapper;


import com.lzxuni.modules.system.entity.UserPost;
import org.apache.ibatis.annotations.Mapper;

/**
 *@Title CompanyMapper.java
 *@description 
 *@author 孙志强
 *@time 2016年11月4日 下午3:57:10
 *@version 1.0
 **/
@Mapper
public interface UserPostMapper {
	void insert(UserPost userPost);

	void deleteByPostId(String postId);

	void deleteByUserId(String userId);

}

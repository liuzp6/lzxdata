package com.lzxuni.modules.system.service;


import com.lzxuni.modules.system.entity.Post;

import java.util.List;

/**
 * 功能描述: <br>
 * @Author 孙志强
 * @date 2018/3/19 12:20
*/
public interface PostService {

	List<Post> getList(List<Post> postList, String parentId,String deptId, String companyId) throws Exception;

	List<Post> getTree(String parentId, String companyId);

	List<Post> getChildTree(List<Post> postList,String deptId, String companyId) throws Exception;

	//根据id查询
	Post queryObject(String id) throws Exception ;
	//插入
	void insert(Post post) throws Exception ;
	//插入
	void insertUserPost(Post post, String[] userIds) throws Exception ;
	//删除
	void delete(String id) throws Exception ;
	//修改
	void update(Post post, Post postParentOld) throws Exception ;

}

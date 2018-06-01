package com.lzxuni.modules.system.service.impl;

import com.lzxuni.common.utils.MethodUtil;
import com.lzxuni.common.utils.UuidUtil;
import com.lzxuni.modules.system.entity.Dept;
import com.lzxuni.modules.system.entity.Post;
import com.lzxuni.modules.system.entity.UserPost;
import com.lzxuni.modules.system.mapper.PostMapper;
import com.lzxuni.modules.system.mapper.UserPostMapper;
import com.lzxuni.modules.system.service.PostService;
import com.lzxuni.modules.system.shiro.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * 
 * <b>功能：</b> <br>
 * <b>作者：</b>孙志强<br>
 * <b>日期：</b>2017年6月4日 上午10:30:14
 * @version 1.0 <br>
 */
@Service("postService")
public class PostServiceImpl implements PostService {
	@Autowired
	private PostMapper postMapper ;
	@Autowired
	private UserPostMapper userPostMapper ;

	private Integer totle ;

	//第一种递归读取岗位信息，为了ztree
	@Override
	public List<Post> getList(List<Post> ztreeList, String parentId,String deptId, String companyId) throws Exception {
		List<Post> list = postMapper.queryListByParentId(parentId,deptId,companyId);
		for (int i = 0; i < list.size(); i++) {
			Post post = list.get(i);
			getList(ztreeList, post.getId(),deptId,companyId);
			ztreeList.add(post) ;
		}
		return ztreeList;
	}

	@Override
	public List<Post> getTree(String parentId, String companyId) {
		List<Post> list = postMapper.queryListByParentId(parentId,null,companyId);
		getTreeDg(list,companyId);
		return list;
	}

	private void getTreeDg(List<Post> ztreeList,String companyId){
		for (int i = 0; i < ztreeList.size(); i++) {
			Post post = ztreeList.get(i);
			ztreeList.get(i).setShowcheck(false);
			ztreeList.get(i).setCheckstate(0);
			ztreeList.get(i).setIsexpand(true);
			ztreeList.get(i).setComplete(true);
			List<Post> tree = postMapper.queryListByParentId(post.getId(),null,companyId);
			ztreeList.get(i).setChildNodes(tree);
			getTreeDg(tree,companyId);
		}
	}

	//getChildTree
	@Override
	public List<Post> getChildTree(List<Post> postList,String deptId,String companyId) throws Exception {
		List<Post> ztreeListAll = new ArrayList<>();

		for (int i=0;i<postList.size();i++){

			ztreeListAll = getList(ztreeListAll, postList.get(i).getId(),deptId, companyId);

			Iterator<Post> iter = ztreeListAll.iterator();
			while (iter.hasNext()) {
				Post post = iter.next();
				if (post.getId().equals(postList.get(i).getId())) {
					iter.remove();
					break;
				}
			}

		}

		return ztreeListAll;
	}

	@Override
	public Post queryObject(String id) throws Exception {
		return postMapper.queryObject(id);
	}

	@Override
	public void insert(Post post) throws Exception {
		Post postParent = postMapper.queryObject(post.getParentId());
		post.setId(UuidUtil.get32UUID());
		post.setCreateUserId(ShiroUtils.getUserId());
		post.setHasChildren(false);
		post.setCreateTime(MethodUtil.getDate(1, null));

		if(postParent==null){
			post.setLevel(1);
		}else{
			post.setLevel(postParent.getLevel()+1);
			postMapper.updateHasChildren(true, post.getParentId());
		}
		postMapper.insert(post);

	}
	@Override
	public void insertUserPost(Post post,String[] userIds) throws Exception {
		userPostMapper.deleteByPostId(post.getId());
		if(userIds != null && userIds.length>0){
			UserPost userPost = new UserPost();
			userPost.setPostId(post.getId());
			for (int i = 0; i < userIds.length; i++) {
				userPost.setUserId(userIds[i]);
				userPostMapper.insert(userPost);
			}
		}
	}

	@Override
	public void delete(String id) throws Exception {

		Post post= postMapper.queryObject(id) ;
		Post postParent = postMapper.queryObject(post.getParentId()) ;
		if(postParent!=null){
			List<Post> deptList = postMapper.queryListByParentId(postParent.getId(),null,post.getCompanyId()) ;
			if(deptList!=null && deptList.size()==1){
				postMapper.updateHasChildren(false,postParent.getId());
			}
		}
		postMapper.delete(id) ;
	}

	@Override
	public void update(Post post,Post postParentOld) throws Exception {
		Post postParentNew = postMapper.queryObject(post.getParentId()) ;
		Integer level = 1;
		List<Post> deptList2 = new ArrayList<>();
		if(postParentOld!=null){
			deptList2 = postMapper.queryListByParentId(postParentOld.getId(),null,post.getCompanyId()) ;
			if(deptList2!=null && deptList2.size()==0){
				postMapper.updateHasChildren(false,postParentOld.getId()) ;
			}
		}
		if(postParentNew!=null){
			postMapper.updateHasChildren(true,postParentOld.getId()) ;
			level = postParentNew.getLevel()+1;
		}
		post.setLevel(level);
		updatePostLevel(post);
		postMapper.update(post) ;
	}
	private void updatePostLevel(Post post){
		List<Post> postList = postMapper.queryListByParentId(post.getId(),null,post.getCompanyId()) ;
		for (int i = 0; i < postList.size(); i++) {
			Post post2 = postList.get(i) ;
			postMapper.update(post2) ;
			updatePostLevel(post2);
		}
	}




}

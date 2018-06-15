package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lzxuni.modules.system.entity.BaseDataitem;
import com.lzxuni.modules.system.mapper.BaseDataitemMapper;
import com.lzxuni.modules.system.service.BaseDataitemService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 孙志强
 * @since 2018-06-11
 */
@Service
public class BaseDataitemServiceImpl extends ServiceImpl<BaseDataitemMapper, BaseDataitem> implements BaseDataitemService {
	@Override
	public List<BaseDataitem> getList(List<BaseDataitem> ztreeList, String parentId) {
		List<BaseDataitem> list = baseMapper.queryListByParentId(parentId);
		for (int i = 0; i < list.size(); i++) {
			BaseDataitem baseDataitem = list.get(i);
			getList(ztreeList, baseDataitem.getItemId());
			ztreeList.add(baseDataitem) ;
		}
		System.out.println("没走缓存=============================");
		return ztreeList;
	}

	@Override
	public List<BaseDataitem> getTree(String parentId) {
		List<BaseDataitem> list = baseMapper.queryListByParentId(parentId);
		getTreeDg(list);
		return list;
	}

	private void getTreeDg(List<BaseDataitem> ztreeList){
		for (int i = 0; i < ztreeList.size(); i++) {
			BaseDataitem baseDataitem = ztreeList.get(i);
			ztreeList.get(i).setShowcheck(false);
			ztreeList.get(i).setCheckstate(0);
			ztreeList.get(i).setIsexpand(true);
			ztreeList.get(i).setComplete(true);
			List<BaseDataitem> tree = baseMapper.queryListByParentId(baseDataitem.getItemId());
			ztreeList.get(i).setChildNodes(tree);
			getTreeDg(tree);
		}
	}
}

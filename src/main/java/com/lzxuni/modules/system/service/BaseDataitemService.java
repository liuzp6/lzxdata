package com.lzxuni.modules.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.lzxuni.modules.system.entity.BaseDataitem;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 孙志强
 * @since 2018-06-11
 */
public interface BaseDataitemService extends IService<BaseDataitem> {
	//列表
	List<BaseDataitem> getList(List<BaseDataitem> ztreeList, String parentId) ;
	List<BaseDataitem> getTree(String parentId) ;

}

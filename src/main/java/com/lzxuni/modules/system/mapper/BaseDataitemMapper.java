package com.lzxuni.modules.system.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.system.entity.BaseDataitem;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 孙志强
 * @since 2018-06-11
 */
public interface BaseDataitemMapper extends BaseMapper<BaseDataitem> {
	List<BaseDataitem> queryListByParentId(String parentId) ;
}

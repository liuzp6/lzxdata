package com.lzxuni.modules.system.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.system.entity.BaseDataitemDetail;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 孙志强
 * @since 2018-06-11
 */
public interface BaseDataitemDetailMapper extends BaseMapper<BaseDataitemDetail> {
	List<BaseDataitemDetail> queryListByParentId(String parentId) ;
	List<BaseDataitemDetail> queryListByItemId(String itemId) ;
}

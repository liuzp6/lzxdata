package com.lzxuni.modules.system.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.system.entity.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * RoleMapper
 *
 * @author liuzp
 * @version 1.0
 * @createTime 2018-05-31 16:33
 * @description 
 **/
@Mapper
public interface MenuMapper extends BaseMapper<Menu> {

    List<Menu> queryListByParentId(@Param("parentId") String parentId, @Param("type") String type);
}

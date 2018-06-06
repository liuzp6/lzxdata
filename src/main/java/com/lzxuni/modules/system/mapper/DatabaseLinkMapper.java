package com.lzxuni.modules.system.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.lzxuni.modules.system.entity.DatabaseLink;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 系统日志
 * 
 * @author chenshun
 * @email sunlightcs@gmail.com
 * @date 2017-03-08 10:40:56
 */
@Mapper
public interface DatabaseLinkMapper extends BaseMapper<DatabaseLink> {

	List<DatabaseLink> queryList(DatabaseLink databaseLink);
}

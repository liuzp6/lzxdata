package com.lzxuni.modules.system.mapper;

import com.lzxuni.modules.system.entity.DatabaseTable;
import com.lzxuni.modules.system.entity.Pk;
import com.lzxuni.modules.system.entity.TableField;
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
public interface DatabaseTableMapper {

	List<DatabaseTable> queryTableList(DatabaseTable databaseTable);
	List<Pk> queryPkList(String tableName);
	List<TableField> queryFieldList(String tableName);
}

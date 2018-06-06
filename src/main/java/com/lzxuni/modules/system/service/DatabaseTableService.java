package com.lzxuni.modules.system.service;

import com.lzxuni.modules.system.entity.DatabaseTable;
import com.lzxuni.modules.system.entity.TableField;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:47
 * @Modified BY:
 **/

public interface DatabaseTableService  {
	List<DatabaseTable> queryTableList(DatabaseTable databaseTable);
	List<TableField> queryFieldList(String tableName);
}

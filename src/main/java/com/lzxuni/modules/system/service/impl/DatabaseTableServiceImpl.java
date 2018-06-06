package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lzxuni.modules.system.entity.DatabaseLink;
import com.lzxuni.modules.system.entity.DatabaseTable;
import com.lzxuni.modules.system.entity.Pk;
import com.lzxuni.modules.system.entity.TableField;
import com.lzxuni.modules.system.mapper.DatabaseLinkMapper;
import com.lzxuni.modules.system.mapper.DatabaseTableMapper;
import com.lzxuni.modules.system.service.DatabaseLinkService;
import com.lzxuni.modules.system.service.DatabaseTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:53
 * @Modified BY:
 **/
@Service
public class DatabaseTableServiceImpl implements DatabaseTableService {

	@Autowired
	private DatabaseTableMapper databaseTableMapper;
	@Override
	public List<DatabaseTable> queryTableList(DatabaseTable databaseTable){
		List<DatabaseTable> databaseTableList = databaseTableMapper.queryTableList(databaseTable);
		for (int i =0;i<databaseTableList.size();i++){
			List<Pk> pkList = databaseTableMapper.queryPkList(databaseTableList.get(i).getTableName());
			databaseTableList.get(i).setPkList(pkList);
		}
		return databaseTableList;
	}

	@Override
	public List<TableField> queryFieldList(String tableName) {
		return databaseTableMapper.queryFieldList(tableName);
	}

}

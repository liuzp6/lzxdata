package com.lzxuni.modules.system.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lzxuni.modules.system.entity.DatabaseLink;
import com.lzxuni.modules.system.mapper.DatabaseLinkMapper;
import com.lzxuni.modules.system.service.DatabaseLinkService;
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
public class DatabaseLinkServiceImpl extends ServiceImpl<DatabaseLinkMapper, DatabaseLink> implements DatabaseLinkService {

	@Override
	public List<DatabaseLink> queryList(DatabaseLink databaseLink){
		List<DatabaseLink> databaseLinkListList = baseMapper.queryList(databaseLink);

		return databaseLinkListList;
	}
}

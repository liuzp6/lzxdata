package com.lzxuni.modules.system.service;

import com.baomidou.mybatisplus.service.IService;
import com.lzxuni.modules.system.entity.DatabaseLink;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:47
 * @Modified BY:
 **/

public interface DatabaseLinkService extends IService<DatabaseLink> {
	List<DatabaseLink> queryList(DatabaseLink databaseLink);
}

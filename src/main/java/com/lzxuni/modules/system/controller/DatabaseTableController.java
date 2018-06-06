package com.lzxuni.modules.system.controller;

import com.alibaba.fastjson.JSON;
import com.lzxuni.common.utils.R;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.common.entity.PageData;
import com.lzxuni.modules.common.entity.PageParameter;
import com.lzxuni.modules.system.entity.DatabaseTable;
import com.lzxuni.modules.system.entity.TableField;
import com.lzxuni.modules.system.service.DatabaseTableService;
import com.lzxuni.modules.system.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author:szq
 * @create:2018-05-02 21:32
 * @Modified BY:
 **/
@RestController
@RequestMapping("/admin/LR_SystemModule/DatabaseTable")
public class DatabaseTableController extends BaseController {

	@Autowired
	private DatabaseTableService databaseTableService;
	@Autowired
	private UserService userService;


	@RequestMapping("/index_v.html")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DatabaseTable/index");
		return mv;
	}
	// 数据库表--列表
	@RequestMapping("/GetList")
	public Object listDo(String databaseLinkId) throws Exception {
		//databaseLinkId 代表数据源标号，本系统默认标号1，如多数据源标号叠加
		List<DatabaseTable> databaseTableList = new ArrayList<>();
		if(databaseLinkId.equals("1")){
			databaseTableList = databaseTableService.queryTableList(null);
		}
		return R.ok(databaseTableList);

	}
	// 数据库表字段--列表
	@RequestMapping("/GetFieldList")
	public Object getFieldList(String tableName) throws Exception {
		List<TableField> tableFieldList = databaseTableService.queryFieldList(tableName);
		return R.ok(tableFieldList);
	}
	@RequestMapping("/TableIndex")
	public ModelAndView insert() {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DatabaseTable/TableIndex");
		return mv;
	}

	// 数据库表字段--列表
	@RequestMapping("/GetTableDataList")
	public Object getTableDataList(String pagination,String tableName,String databaseLinkId) throws Exception {
		PageParameter pageParameter = JSON.parseObject(pagination, PageParameter.class);
		PageData pageData = getPageData(userService.queryPage(pageParameter, null));
		return R.ok(pageData);
	}

}

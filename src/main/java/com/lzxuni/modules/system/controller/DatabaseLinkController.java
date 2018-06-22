package com.lzxuni.modules.system.controller;

import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.DatabaseLink;
import com.lzxuni.modules.system.service.DatabaseLinkService;
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
@RequestMapping("/admin/LR_SystemModule/DatabaseLink")
public class DatabaseLinkController extends BaseController {

	@Autowired
	private DatabaseLinkService databaseLinkService;
	@RequestMapping("/index_v.html")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DatabaseLink/index");
		return mv;
	}
	// 部门列表
	@RequestMapping("/GetList.html")
	public Object listDo() throws Exception {
		// 分页
		List<DatabaseLink> databaseLinkList = databaseLinkService.queryList(null);
		return R.ok(databaseLinkList);

	}
	// 根据parentId查找
	@RequestMapping("/GetTreeList")
	public Object queryListByParentId() throws Exception {


		List<DatabaseLink> list = new ArrayList();

		DatabaseLink databaseLink = new DatabaseLink();
		databaseLink.setHasChildren(true);
		databaseLink.setIsexpand(true);
		databaseLink.setShowcheck(false);
		databaseLink.setCheckstate(0);
		databaseLink.setComplete(true);
		databaseLink.setId(".");
		databaseLink.setName(".");
		list.add(databaseLink);
		List<DatabaseLink> childNodes = new ArrayList();
		DatabaseLink databaseLink1 = new DatabaseLink();
		databaseLink1.setHasChildren(false);
		databaseLink1.setIsexpand(false);
		databaseLink1.setShowcheck(false);
		databaseLink1.setCheckstate(0);
		databaseLink1.setComplete(true);
		databaseLink1.setId("1");
		databaseLink1.setName("数据源1");

		DatabaseLink databaseLink2 = new DatabaseLink();
		databaseLink2.setHasChildren(false);
		databaseLink2.setIsexpand(false);
		databaseLink2.setShowcheck(false);
		databaseLink2.setCheckstate(0);
		databaseLink2.setComplete(true);
		databaseLink2.setId("2");
		databaseLink2.setName("数据源2");


		childNodes.add(databaseLink1);
		childNodes.add(databaseLink2);

		databaseLink.setChildNodes(childNodes);
		return R.ok(list);
	}


	@RequestMapping("/Form")
	public ModelAndView form(){
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DatabaseLink/Form");
		return mv;
	}

	@RequestMapping("/TestConnection")
	public Object testConnection(DatabaseLink databaseLink) {

		//return R.ok("连接成功");
		return R.error("失败");
	}
	@RequestMapping("/SaveForm")
	public Object insertDo(DatabaseLink databaseLink) {
		if(StringUtils.isEmpty(databaseLink.getId())){
			databaseLinkService.insert(databaseLink);
			return R.ok("保存成功");
		}else{
			databaseLinkService.updateById(databaseLink);
			return R.ok("修改成功");
		}
	}



	@RequestMapping("/GetMap")
	public Object getMap(){
		// {"code":200,"info":"no update","data":{}}
		return R.ok(200,"no update",null);
	}
}

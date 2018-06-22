package com.lzxuni.modules.system.controller;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.lzxuni.common.utils.GetPinyin;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.BaseDataitem;
import com.lzxuni.modules.system.entity.BaseDataitemDetail;
import com.lzxuni.modules.system.service.BaseDataitemDetailService;
import com.lzxuni.modules.system.service.BaseDataitemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 孙志强
 * @since 2018-06-11
 */
@RestController
@RequestMapping("/admin/LR_SystemModule/DataItem")
public class BaseDataitemController extends BaseController {
	@Autowired
	private BaseDataitemService baseDataitemService;
	@Autowired
	private BaseDataitemDetailService baseDataitemDetailService;
	@RequestMapping("/Index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DataItem/index");
		return mv;
	}

	// 列表
	@RequestMapping("/GetClassifyList")
	public Object getClassifyList(){
		// 分页
		List<BaseDataitem> baseDataitemList = baseDataitemService.getList(new ArrayList<>(),"0");
//		List<BaseDataitem> deptList2= new ArrayList<>() ;
//		for (int i = deptList.size(); i > 0; i--) {
//			deptList2.add(deptList.get(i-1)) ;
//		}
		return R.ok(baseDataitemList);
	}

	// 树
	@RequestMapping("/GetClassifyTree")
	public Object getClassifyTree(String parentId) {
		if (StringUtils.isEmpty(parentId)) {
			parentId = "0";
		}
		List<BaseDataitem> baseDataitemList = baseDataitemService.getTree(parentId);
		return R.ok(baseDataitemList);
	}



	@RequestMapping("/ClassifyIndex")
	public ModelAndView classifyIndex() {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DataItem/classifyIndex");
		return mv;
	}
	@RequestMapping("/ClassifyForm")
	public ModelAndView classifyForm() {
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DataItem/classifyForm");
		return mv;
	}
	@RequestMapping("/ExistItemName")
	public Object existItemName(String itemName) {
		return R.ok(true);
	}
	@RequestMapping("/ExistItemCode")
	public Object existItemCode(String itemCode) {
		return R.ok(true);
	}

	@RequestMapping("/SaveClassifyForm")
	public Object saveClassifyForm(BaseDataitem baseDataitem) {
		if(StringUtils.isEmpty(baseDataitem.getItemId())){
			baseDataitem.setCreateTime(new Date());
			baseDataitem.setCreateUserid(getUserId());
			baseDataitem.setCreateUsername(getUser().getUsername());
			baseDataitemService.insert(baseDataitem);
			return R.ok("保存成功");
		}else{
			baseDataitem.setModifyTime(new Date());
			baseDataitem.setModifyUserid(getUserId());
			baseDataitem.setModifyUsername(getUser().getUsername());
			baseDataitemService.update(baseDataitem,
					new EntityWrapper<BaseDataitem>().eq("item_id", baseDataitem.getItemId()));
			return R.ok("修改成功");
		}
	}
	//字典分类删除删除
	@RequestMapping("/DeleteClassifyForm")
	public Object delete(@RequestParam("keyValue")String itemId) throws Exception {
		baseDataitemService.deleteById(itemId);
		return R.ok("删除成功");
	}

	@RequestMapping("/Form")
	public ModelAndView form(){
		ModelAndView mv = new ModelAndView("/admin/LR_SystemModule/DataItem/form");
		return mv;
	}
	@RequestMapping("/ExistDetailItemName")
	public Object existDetailItemName(String itemName,String itemCode) {
		return R.ok(true);
	}
	@RequestMapping("/ExistDetailItemValue")
	public Object existDetailItemValue(String itemCode,String itemValue) {
		return R.ok(true);
	}
	@RequestMapping("/SaveDetailForm")
	public Object saveDetailForm(BaseDataitemDetail baseDataitemDetail) {
		if(StringUtils.isEmpty(baseDataitemDetail.getItemId())){
			baseDataitemDetail.setCreateTime(new Date());
			baseDataitemDetail.setSimpleSpelling(GetPinyin.getPingYin(baseDataitemDetail.getItemName()));
			baseDataitemDetail.setCreateUserid(getUserId());
			baseDataitemDetail.setCreateUsername(getUser().getUsername());
			baseDataitemDetailService.insert(baseDataitemDetail);
			return R.ok("保存成功");
		}else{
			baseDataitemDetail.setModifyTime(new Date());
			baseDataitemDetail.setSimpleSpelling(GetPinyin.getPingYin(baseDataitemDetail.getItemName()));
			baseDataitemDetail.setModifyUserid(getUserId());
			baseDataitemDetail.setModifyUsername(getUser().getUsername());
			baseDataitemDetailService.update(baseDataitemDetail,
					new EntityWrapper<BaseDataitemDetail>().eq("item_detail_id", baseDataitemDetail.getItemDetailId()));
			return R.ok("修改成功");
		}
	}
	// 列表
	@RequestMapping("/GetDetailList")
	public Object getDetailList(BaseDataitemDetail baseDataitemDetail){
		// 分页
		List<BaseDataitemDetail> baseDataitemDetailList = baseDataitemDetailService.
				selectList(new EntityWrapper<BaseDataitemDetail>().eq("item_code", baseDataitemDetail.getItemCode()));
		return R.ok(baseDataitemDetailList);
	}
	//字典删除
	@RequestMapping("/DeleteDetailForm")
	public Object deleteDetailForm(@RequestParam("keyValue")String itemDetailId) throws Exception {
		baseDataitemDetailService.deleteById(itemDetailId);
		return R.ok("删除成功");
	}
	@RequestMapping("/GetMap")
	public Object getMap(){
		// {"code":200,"info":"no update","data":{}}
		return R.ok(200,"no update",null);
	}
}


package com.lzxuni.modules.system.controller;


import com.lzxuni.common.utils.JsonResultUtil;
import com.lzxuni.common.utils.R;
import com.lzxuni.common.utils.StringUtils;
import com.lzxuni.modules.common.controller.BaseController;
import com.lzxuni.modules.system.entity.Company;
import com.lzxuni.modules.system.entity.Post;
import com.lzxuni.modules.system.service.CompanyService;
import com.lzxuni.modules.system.service.DeptService;
import com.lzxuni.modules.system.service.PostService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/admin/LR_OrganizationModule/Post")
public class PostController extends BaseController {
    @Autowired
    private CompanyService companyService;
    @Autowired
    private PostService postService;
    @Autowired
    private DeptService deptService;

    // 岗位列表
    @RequestMapping("/index_v.html")
    public ModelAndView list() throws Exception {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Post/index");
        return mv;
    }

    // 岗位列表
    @RequestMapping("/GetList.html")
    public Object listDo(String id, String checkIds, String companyId,String deptId) throws Exception {
        List<Post> postList = postService.getList(new ArrayList<>(), "0",deptId, companyId);
        List<Post> postList2 = new ArrayList<>();
        for (int i = postList.size(); i > 0; i--) {
            //不能选中自己
//            if (StringUtils.isNotEmpty(id) && postList.get(i - 1).getId().equals(id)) {
//                postList.get(i - 1).setChkDisabled(true);
//                postList.get(i - 1).setClick(false);
//            }
//            //选中默认值
//            //if (postList.get(i - 1).getId().equals(checkId)) {
//            if(StringUtils.isNotEmpty(checkIds)){
//                if (checkIds.contains(postList.get(i - 1).getId())) {
//                    postList.get(i - 1).setChecked(true);
//                }
//            }
            postList2.add(postList.get(i - 1));
        }
        return R.ok(postList);
    }

	// 根据parentId查找
	@RequestMapping("/GetTree.html")
	public Object queryListByParentId(String parentId,String companyId) {
		parentId = StringUtils.isEmpty(parentId) ? "0" : parentId;
		List<Post> postList = postService.getTree(parentId,companyId);
		return R.ok(postList);
	}

    // 岗位添加展示页面
    @RequestMapping("/Form.html")
    public ModelAndView insert(String parentId, String companyId) throws Exception {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Post/Form");

        Post postParent = postService.queryObject(parentId);
        Company company = companyService.queryObject(companyId);

        mv.addObject("postParent", postParent);
        mv.addObject("company", company);

        return mv;
    }
	@RequestMapping("/SelectForm.html")
	public ModelAndView selectForm(String parentId, String companyId) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Post/SelectForm");
		return mv;
	}
    // 用户处理
    @RequestMapping("/SaveForm.html")
    public Object insertDo(Post post) throws Exception {
		if(StringUtils.isEmpty(post.getId())){
			postService.insert(post);
			return R.ok("保存成功");
		}else{
			Post companyParentOld = postService.queryObject(post.getParentId());
			postService.update(post,companyParentOld);
			return R.ok("修改成功");
		}
    }

    // 岗位
    @RequestMapping("/GetEntityName.html")
    public Object GetEntityName(@RequestParam("keyValue") String id) throws Exception {
        Post post = postService.queryObject(id);
		return new R().put("data", post.getName());
    }

    // 用户添加处理
    @RequestMapping("/DeleteForm.html")
    public Object delete(@RequestParam("keyValue") String id) throws Exception {
        postService.delete(id);
		return R.ok("删除成功");
    }

    // 添加成员
    @RequestMapping("/addUser_v.html")
    public Object addUser(String id) throws Exception {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Post/addUser");

        Post post = postService.queryObject(id);
        Company company = companyService.queryObject(post.getCompanyId());
        mv.addObject("post", post);
        mv.addObject("company", company);
        return mv;
    }

    // 添加成员处理
    @RequiresPermissions("gwgl:insert")
    @RequestMapping("/addUser_o.html")
    public Object addUseroDo(Post post, String[] userIds) throws Exception {
        postService.insertUserPost(post, userIds);
        return JsonResultUtil.getSuccessJson("成功！");
    }

    // 查看成员
    @RequiresPermissions("gwgl:insert")
    @RequestMapping("/lookUser_v.html")
    public Object lookUser(String id) throws Exception {
        ModelAndView mv = new ModelAndView("/admin/LR_OrganizationModule/Post/lookUser");
        Post post = postService.queryObject(id);
        mv.addObject("post", post);
        return mv;
    }

}

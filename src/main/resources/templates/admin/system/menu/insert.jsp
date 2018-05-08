<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/admin/path.jsp"%>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>${settings.title} - 基本表单</title>
<meta name="keywords" content="${settings.keywords}">
<meta name="description"
	content="${settings.keywords}">

	<link rel="shortcut icon" href="favicon.ico">
	<link href="static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
	<link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
	<link href="static/css/plugins/iCheck/custom.css" rel="stylesheet">
	<link href="static/css/animate.min.css" rel="stylesheet">
	<link href="static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/demo.css" type="text/css">
	<link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
	
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>添加菜单</h5>

					</div>
					<div class="ibox-content">
						<form method="post" name="myform" id="myform" class="form-horizontal">
							<div class="form-group">
								<label class="col-sm-2 control-label">名称</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="name" id="name">
								</div>
							</div>
							
							<div class="form-group">
                                <label class="col-sm-2 control-label">父节点</label>
                                <div class="col-sm-10" style="float:left;">
                                    
                                    <input type="hidden" name="parentId" id="parentId" value="${menu.id }"/>
                                    <div>
                                   		<button class="btn btn-primary" type="button" onclick="showMenu();"  style="float:left;">选择</button>
                                    </div>
                                    <div id="parentName" style="margin-left:15px;margin-top:5px;float:left;"><i class="${menu.icon }"></i>${menu.name }</div>
                                </div>
                              		
                                	
                            </div>
							<div class="form-group">
								<label class="col-sm-2 control-label">地址</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" name="url" id="url">
								</div>
							</div>
							<div class="form-group">
                                <label class="col-sm-2 control-label">图标</label>
                                <div class="col-sm-10" style="float:left;">
                                    <input type="hidden" name="icon" id="icon" value=""/>
                                    <div>
                                   		<button class="btn btn-primary" type="button" onclick="layerutil('选择图标','${pageContext.request.contextPath}/admin/system/menu/fontawesome.html','500','400')" style="float:left;">选择</button>
                                    </div>
                                   	<div id="iconName" style="margin-left:80px;margin-top:1px;font-size: 28px;"></div>
                                </div>
                            </div>
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-2">
									<button class="btn btn-primary" type="submit">提交</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	
	<script src="static/js/jquery.min.js?v=2.1.4"></script>
	<script src="static/js/jquery.form.js"></script>
	<script src="static/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="static/js/content.min.js?v=1.0.0"></script>
	<script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
	<script src="static/js/plugins/validate/jquery.validate.min.js"></script>
	<script src="static/js/plugins/validate/messages_zh.min.js"></script>
	<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.excheck.js"></script>
	<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.exedit.js"></script>
    
    
	<script src="static/js/layerutil.js" type="text/javascript"></script>
    
<div id="menuContent" class="menuContent" style="display:none; position: absolute;z-index:99999;">
	<ul id="treeDemo" class="ztree" style="margin-top:0; width:305px; height: 300px;"></ul>
</div>

</body>
</html>
<SCRIPT type="text/javascript">
<!--
var setting = {

	async: {
		enable: true,
		url:"${pageContext.request.contextPath}/admin/system/menu/listDo.html",
		autoParam:["id"],
		otherParam:{"checkId":$("#parentId").val()},
		dataFilter: filter
	},
	
	check: {
		enable: true,
		chkStyle: "radio",
		radioType: "all"
	},
	data: {
		simpleData: {
			enable: true,
			idKey: "id",
			pIdKey: "parentId",
			rootPId: "0"
		}
	},
	view: {
		dblClickExpand: false,
		nameIsHTML:true	
	},
	callback: {
		onClick: onClick,
		onCheck: onCheck
	}
};
function filter(treeId, parentNode, childNodes) {
	if (!childNodes) return null;
	for (var i=0, l=childNodes.length; i<l; i++) {
		childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
	}
	return childNodes;
}
//
function onClick(e, treeId, treeNode) {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo");
	zTree.checkNode(treeNode, !treeNode.checked, null, true);
	return false;
}
function onCheck(e, treeId, treeNode) {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
	nodes = zTree.getCheckedNodes(true);
	if(nodes!=""){
		$("#parentName").html(nodes[0].name);
		$("#parentId").val(nodes[0].id);
	}
}

function showMenu() {
	var cityObj = $("#parentName");
	var cityOffset = $("#parentName").offset();
	//$("#menuContent").css({left:"157.167px", top:"195px"}).slideDown("fast");
	$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
	$("body").bind("mousedown", onBodyDown);
}
function hideMenu() {
	$("#menuContent").fadeOut("fast");
	$("body").unbind("mousedown", onBodyDown);
}
function onBodyDown(event) {
	if (!(event.target.id == "menuBtn" || event.target.id == "parentName" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
		hideMenu();
	}
}
//
$(document).ready(function(){
	$.fn.zTree.init($("#treeDemo"), setting);
});
//-->
</SCRIPT>
<script>
$.validator.setDefaults({
    highlight: function(e) {
        $(e).closest(".form-group").removeClass("has-success").addClass("has-error")
    },
    success: function(e) {
        e.closest(".form-group").removeClass("has-error")//.addClass("has-success")
    },
	
    errorElement: "span",
    errorPlacement: function(error,element) {
        error.appendTo(element.is(":radio") || element.is(":checkbox") ? element.parent().parent().parent() : element.parent())
    },
}), $().ready(function() {
		var e = "<i class='fa fa-times-circle'></i> ";
		$("#myform").validate({
			focusInvalid: true, 
			onkeyup:false,
			submitHandler: function(form){  
				//loading层
				var index = layer.load(1, {
					shade: [0.1,'#fff'] //0.1透明度的白色背景
				}); 
				$(form).ajaxSubmit({
                    type: "post",
                    url: "${pageContext.request.contextPath}/admin/system/menu/insertDo.html",
                    dataType: "json",
                    success: function (data, status, xhr) {
						layer.close(index);
						if(data.result==1){
							layer.msg("操作成功!", {icon: 1,time: 1000}, function(){
								parent.location.reload();
								layer_close();
							});
						}else{
							layer.msg("操作失败："+data.message,{icon: 2,time: 2000},function(){});   
						}
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
						layer.close(index);
						layer.msg("操作失败，请联系管理员！",{icon:2,time:2000}, function(){}); 
                    }
                });
			},
			rules: {
				name: "required"
			},
			messages: {
				name: e + "<span style='color:#a94442'>请输入角色名称</span>"
			}
		})
});
function layerutil(title,url,w,h){
	layer_show(title,url,w,h);
}
</script>

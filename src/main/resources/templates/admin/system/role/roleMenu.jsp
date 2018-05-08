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


    <title>${settings.title} - Bootstrap Table</title>
    <meta name="keywords" content="${settings.keywords}">
    <meta name="description" content="${settings.keywords}">

    <link rel="shortcut icon" href="favicon.ico"> <link href="static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="static/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="static/css/animate.min.css" rel="stylesheet">
    <link href="static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    
    <link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/demo.css" type="text/css">
	<link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight" >
        <div class="ibox float-e-margins" style="height:auto;">
            <div class="ibox-title">
                <h5>列表</h5>
            </div>
            <div class="ibox-content">
				<button class="btn btn-primary " type="button" id="save" >
					<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;保存
				</button>
                 <ul id="treeDemo" class="ztree" style="background:white ;height:360px;border:none;width:100%"></ul>
            </div>
        </div>
        <!-- End Panel Other -->
    </div>
    <script src="static/js/jquery.min.js?v=2.1.4"></script>
    <script src="static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="static/js/content.min.js?v=1.0.0"></script>
    <script src="static/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="static/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="static/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="static/js/demo/bootstrap-table-demo.min.js"></script>
    <script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
	<script src="static/js/layerutil.js" type="text/javascript"></script>
    <script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.core.js"></script>
    <script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.excheck.js"></script>
    <script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.exedit.js"></script>
</body>

</html>
<SCRIPT type="text/javascript">
<!--
var setting = {
	async: {
		enable: true,
		url:"${pageContext.request.contextPath}/admin/system/role/roleMenuList.html",
		autoParam:["id"],
		otherParam:{"roleId":"${roleId}"},
		dataFilter: filter
	},
	
	check: {
		enable: true
	},
	data: {
		simpleData: {
			enable: true,
			idKey: "id",
			pIdKey: "parentId",
			rootPId: "0"
		}
	},
	view:{
		nameIsHTML:true	
	}
};
function filter(treeId, parentNode, childNodes) {
	if (!childNodes) return null;
	for (var i=0, l=childNodes.length; i<l; i++) {
		childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
	}
	return childNodes;
}
function setCheck() {
	var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
	type = {"Y" : "ps", "N" : "ps"};
	zTree.setting.check.chkboxType = type;
}
$(document).ready(function(){
	$.fn.zTree.init($("#treeDemo"), setting);
	setCheck();
});
//-->
</SCRIPT>
<script type="text/javascript">
<!--
function layerutil(title,url,w,h){
	layer_show(title,url,w,h);
}
$("#save").click(function(){
	var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
	var nodes = treeObj.getCheckedNodes(true);
	var ids="";
	var url="${pageContext.request.contextPath}/admin/system/role/roleMenuDo.html";//update.html";
	for(var i=0;i<nodes.length;i++){
		ids=ids+nodes[i].id+",";
	}
	$.ajax({
		url:url,
		type:'post',
		data:'ids='+ids+'&roleId=${roleId}',
		dataType: "json",
		async: false,
		success: function(data){ 
			if(data.result==1){
				layer.msg("操作成功!", {icon: 1,time: 1000}, function(){
					$.fn.zTree.init($("#treeDemo"), setting);
					setCheck();
					layer_close();
					
				});
			}else{
				layer.msg("操作失败："+data.message,{icon: 2,time: 2000},function(){});   
			}
		},
		error:function(){
			layer.msg("操作失败，请联系管理员！",{icon:2,time:2000}, function(){});
		}
	});
	return false;
});
//-->
</script>

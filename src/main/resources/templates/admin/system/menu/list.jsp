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

<body>
    <div class="wrapper wrapper-content animated fadeInRight" style="height:auto;">
        <div class="ibox float-e-margins" >
            <div class="ibox-title">
                <h5>列表</h5>
            </div>
            <div class="ibox-content">
            <shiro:hasPermission  name="menu:insert"> 
            	<button class="btn btn-primary " type="button" id="insert" >
					<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;添加 
				</button>
			</shiro:hasPermission>
			 <shiro:hasPermission  name="menu:update"> 
				<button class="btn btn-primary " type="button" id="update">
					<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;修改
				</button>
			</shiro:hasPermission>
			<shiro:hasPermission  name="menu:del">
				<button class="btn btn-primary " type="button" id="del" >
					<i class="fa fa-plus" aria-hidden="true"></i>&nbsp;删除 
				</button>
			</shiro:hasPermission>
                 <ul id="treeDemo" class="ztree" style="background:white ;height:100%;border:none;width:100%;overflow-y:hidden;"></ul>
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
	edit: {
		drag: {
			autoExpandTrigger: true,
			prev: dropPrev,
			inner: dropInner,
			next: dropNext
		},
		enable: true,
		showRemoveBtn: false,
		showRenameBtn: false
	},
	async: {
		enable: true,
		url:"${pageContext.request.contextPath}/admin/system/menu/listDo.html",
		autoParam:["id"],
		otherParam:{"otherParam":"zTreeAsyncTest"},
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
	view:{
		nameIsHTML:true	
	},
	callback: {
		beforeDrag: beforeDrag,
		beforeDrop: beforeDrop,
		beforeDragOpen: beforeDragOpen,
		onDrag: onDrag,
		onDrop: onDrop,
		onExpand: onExpand
	}
};
//
function dropPrev(treeId, nodes, targetNode) {
	var pNode = targetNode.getParentNode();
	if (pNode && pNode.dropInner === false) {
		return false;
	} else {
		for (var i=0,l=curDragNodes.length; i<l; i++) {
			var curPNode = curDragNodes[i].getParentNode();
			if (curPNode && curPNode !== targetNode.getParentNode() && curPNode.childOuter === false) {
				return false;
			}
		}
	}
	return true;
}
function dropInner(treeId, nodes, targetNode) {
	if (targetNode && targetNode.dropInner === false) {
		return false;
	} else {
		for (var i=0,l=curDragNodes.length; i<l; i++) {
			if (!targetNode && curDragNodes[i].dropRoot === false) {
				return false;
			} else if (curDragNodes[i].parentTId && curDragNodes[i].getParentNode() !== targetNode && curDragNodes[i].getParentNode().childOuter === false) {
				return false;
			}
		}
	} 
	return true;
}
function dropNext(treeId, nodes, targetNode) {
	var pNode = targetNode.getParentNode();
	if (pNode && pNode.dropInner === false) {
		return false;
	} else {
		for (var i=0,l=curDragNodes.length; i<l; i++) {
			var curPNode = curDragNodes[i].getParentNode();
			if (curPNode && curPNode !== targetNode.getParentNode() && curPNode.childOuter === false) {
				return false;
			}
		}
	}
	return true;
}

var log, className = "dark", curDragNodes, autoExpandNode;
function beforeDrag(treeId, treeNodes) {
	className = (className === "dark" ? "":"dark");
	for (var i=0,l=treeNodes.length; i<l; i++) {
		if (treeNodes[i].drag === false) {
			curDragNodes = null;
			return false;
		} else if (treeNodes[i].parentTId && treeNodes[i].getParentNode().childDrag === false) {
			curDragNodes = null;
			return false;
		}
	}
	curDragNodes = treeNodes;
	return true;
}
function beforeDragOpen(treeId, treeNode) {
	autoExpandNode = treeNode;
	return true;
}
//拖拽完回掉函数
function beforeDrop(treeId, treeNodes, targetNode, moveType, isCopy) {
	//loading层
	var index = layer.load(1, {
	    shade: [0.1,'#fff'] //0.1透明度的白色背景
	}); 
	
	var oldId="";//=treeNodes[0].id;
	for(var i=0;i<treeNodes.length;i++){
		oldId=oldId+treeNodes[i].id+",";
	}
	var targetId=targetNode ? targetNode.id : "0";
	
	$.ajax({
		url:'${pageContext.request.contextPath}/admin/system/menu/updateSort.html',
		type:'post',
		data:'oldId='+oldId+'&targetId='+targetId+'&moveType='+moveType+'&time='+new Date(),
		dataType:"html",
		async: false,
		success: function(msg){ 
			layer.close(index); 
			return true;
		},
		error:function(){
			layer.close(index); 
			alert("失败");
			$.fn.zTree.init($("#treeDemo"), setting);
			return false;
		}
	});
	
}
function onDrag(event, treeId, treeNodes) {
}
function onDrop(event, treeId, treeNodes, targetNode, moveType, isCopy) {
}
function onExpand(event, treeId, treeNode) {
}

//
function filter(treeId, parentNode, childNodes) {
	if (!childNodes) return null;
	for (var i=0, l=childNodes.length; i<l; i++) {
		childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
	}
	return childNodes;
}
//var zNodes=${menuList};

$(document).ready(function(){
	$.fn.zTree.init($("#treeDemo"), setting);
});
//-->
</SCRIPT>
<script type="text/javascript">
<!--
function layerutil(title,url,w,h){
	layer_show(title,url,w,h);
}
function oprate(title,url,w,h){
	var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
	var nodes = treeObj.getCheckedNodes(true);
	if(nodes!=""){
		url=url+"?parentId="+nodes[0].id;
	}else{
		url=url+"?parentId="+0;
	}
	layerutil(title,url,w,h);
}
$("button.btn").click(function(){
	var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
	var nodes = treeObj.getCheckedNodes(true);
	var id="";
	var parentId="";
	var title="";
	var value=$(this).attr("id");
	var url="${pageContext.request.contextPath}/admin/system/menu/";//update.html";
	if(value=="insert"){
		title="添加菜单";
		if(nodes!=""){
			parentId=nodes[0].id;
		}else{
			parentId=0;
		}
		url=url+value+".html?parentId="+parentId;
	}else if(value=="update"){
		title="修改菜单";
		if(nodes!=""){
			id=nodes[0].id;
		}else{
			layer.alert("请选择一个要修改的菜单");
			return false;
		}
		if(id=="3"||id=="aebe3cd3becb40d18cb38862d08a487f"){
			layer.alert("对不起，该菜单不允许修改");
			return false;
		}
		
		url=url+value+".html?id="+id;
	}else if(value=="del"){
		if(nodes!=""){
			id=nodes[0].id;
		}else{
			layer.alert("请选择一个要删除的菜单");
			return false;
		}
		if(id=="3"||id=="aebe3cd3becb40d18cb38862d08a487f"){
			layer.alert("对不起，该菜单不允许删除");
			return false;
		}
		
		url=url+value+".html";
		layer.confirm('确认删除么?', {icon: 3, title:'提示'}, function(index){
			var index1 = layer.load(1, {
				shade: [0.1,'#fff'] //0.1透明度的白色背景
			});
			$.ajax({
				url:url,
				data:'id='+id+"&time="+new Date(),
				type:'post',
				async: false,
				success: function(data, status, xhr){ 
					layer.close(index1);
					if(data.status!=500){
						layer.alert('删除成功', function(index){
						   $.fn.zTree.init($("#treeDemo"), setting);
						   layer.close(index);
						});   
					}
					layer.close(index);
				},
				error: function (XMLHttpRequest, textStatus, errorThrown) {
					layer.close(index1);
					layer.alert('删除失败，请联系管理员！');
					layer.close(index);
				}
			});
		});
		return false;
	}
	layerutil(title,url,'800','500');
	
});
//-->
</script>

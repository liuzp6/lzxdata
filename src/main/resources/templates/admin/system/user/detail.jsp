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
    <meta name="description" content="${settings.keywords}">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="static/css/animate.min.css" rel="stylesheet">
    <link href="static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
	<link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/demo.css" type="text/css">
	<link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>

<body>

    
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>个人资料</h5>
                       
                    </div>
                    <div class="ibox-content">
                        <form method="post" name="myform" id="myform" class="form-horizontal">
                        	<input type="hidden" name="userId" id="userId" value="${user.userId }"/>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">账号</label>
                                <label class="col-sm-0 control-label">${user.username }</label>
                            </div>
                            <div class="form-group">
								<label class="col-sm-2 control-label">姓名</label>
								<label class="col-sm-0 control-label">${user.realName }</label>
							</div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">ERP工号</label>
                                <label class="col-sm-0 control-label">${user.enCode }</label>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">手机</label>
                                <label class="col-sm-0 control-label">${user.mobile }</label>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">内网QQ</label>
                                <label class="col-sm-0 control-label">${user.qq }</label>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">微信</label>
                                <label class="col-sm-0 control-label">${user.weChat }</label>
                            </div>
							<div class="form-group">
                                <label class="col-sm-2 control-label">部门</label>
                                <label class="col-sm-0 control-label">${deptNames }</label>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">岗位</label>
                                <label class="col-sm-0 control-label">${postNames }</label>
                            </div>
							<div class="form-group">
								<label class="col-sm-2 control-label">角色</label>
								<label class="col-sm-0 control-label">
                                    <c:forEach items="${user.roleList}"  begin="0" var="item" varStatus="status">
                                        ${item.name}&nbsp;
                                    </c:forEach>
                                </label>
							</div>
                            <div class="hr-line-dashed"></div>
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
	
<div id="menuContent" class="menuContent" style="display:none; position: absolute;z-index:99999;">
	<ul id="treeDemo" class="ztree" style="margin-top:0; width:305px; height: 300px;"></ul>
</div>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/form_basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:15 GMT -->
</html>
<script>
$.validator.setDefaults({
    highlight: function(e) {
        $(e).closest(".form-group").removeClass("has-success").addClass("has-error")
    },
    success: function(e) {
        e.closest(".form-group").removeClass("has-error");//.addClass("has-success")
    },
	
    errorElement: "span",
    errorPlacement: function(error,element) {
		//var id=element.attr("id")+'id';
		//error.appendTo($("#"+id));
        error.appendTo(element.is(":radio") || element.is(":checkbox") ? element.parent().parent().parent() : element.parent())
    },
    //errorClass: "help-block m-b-none",
    //validClass: "help-block m-b-none"
}), $().ready(function() {
		var e = "<i class='fa fa-times-circle'></i> ";
		$("#myform").validate({
			focusInvalid: true, 
			onkeyup:false,
			submitHandler: function(form){  
				$(form).ajaxSubmit({
                    type: "post",
                    url: "${pageContext.request.contextPath}/admin/system/user/updateDo.html",
                    dataType: "text",
                    success: function (data) {
						layer.alert("修改成功",function(){
							parent.location.reload();
						});
                    },
                    error: function () {
                        layer.alert('修改失败，请联系管理员！');
                    }
                });
			},
			rules: {
				realName: "required"
			},
			messages: {
				realName: e + "<span style='color:#a94442'>请输入用户姓名</span>"
			}
		})
});
</script>
<SCRIPT type="text/javascript">
<!--
var setting = {

	async: {
		enable: true,
		url:"${pageContext.request.contextPath}/admin/system/user/roleUserList.html",
		autoParam:["id"],
		otherParam:{"userId":"${user.userId}"},
		dataFilter: filter
	},
	
	check: {
		enable: true
	},
	data: {
		simpleData: {
			enable: true,
			idKey: "id",
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
		var roleNames="";
		var roleIds="";
		
		for(var i=0;i<nodes.length;i++){
			roleNames=roleNames+nodes[i].name+",";
			roleIds=roleIds+nodes[i].id+",";
		}
		$("#roleNames").html(roleNames.substring(0,roleNames.length-1));
		$("#roleIds").val(roleIds);
	}else{
		$("#roleNames").html('');
		$("#roleIds").val(''); 
	}
}

function showMenu() {
	var cityObj = $("#roleNames");
	var cityOffset = $("#roleNames").offset();
	//$("#menuContent").css({left:"157.167px", top:"195px"}).slideDown("fast");
	$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
	$("body").bind("mousedown", onBodyDown);
}
function hideMenu() {
	$("#menuContent").fadeOut("fast");
	$("body").unbind("mousedown", onBodyDown);
}
function onBodyDown(event) {
	if (!(event.target.id == "menuBtn" || event.target.id == "roleNames" || event.target.id == "roleNames" || $(event.target).parents("#menuContent").length>0)) {
		hideMenu();
	}
}
//
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
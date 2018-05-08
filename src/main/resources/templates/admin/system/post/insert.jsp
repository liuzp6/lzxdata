<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/admin/path.jsp"%>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${settings.title} - 基本表单</title>
	<meta name="keywords" content="${settings.keywords}">
	<meta name="description" content="${settings.keywords}">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>外出登记</title>
	<!--框架必需start-->
	<script src="static/Content/scripts/jquery/jquery-1.10.2.min.js"></script>
	<link href="static/Content/styles/font-awesome.min.css" rel="stylesheet" />
	<link href="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<script src="static/Content/scripts/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!--框架必需end-->
	<!--bootstrap组件start-->
	<link href="static/Content/scripts/bootstrap/bootstrap.min.css" rel="stylesheet" />
	<link href="static/Content/scripts/bootstrap/bootstrap.extension.css" rel="stylesheet" />
	<script src="static/Content/scripts/bootstrap/bootstrap.min.js"></script>
	<!--bootstrap组件end-->
	<script src="static/Content/scripts/plugins/datepicker/WdatePicker.js"></script>
	<link href="static/Content/scripts/plugins/tree/css?v=H1Pw5_bJCpzF5OnxCweb5t4XUgVmB2SD2PT8UreOXFA1" rel="stylesheet"/>
	<link href="static/Content/scripts/plugins/datetime/css?v=R2gV65TRaqpUG53uer0IzYRSK0iOi8wNodWtNoeZPpQ1" rel="stylesheet"/>
	<link href="static/Content/scripts/plugins/wizard/css?v=W_wrFuN6q7PYaBxT6Agjqz3dwFYf6-aOJd-mk2R7Hvg1" rel="stylesheet"/>
	<link href="static/Content/styles/learun.css?v=Ty7LTzndRqV52dwtX2Mntj35r2jf8KW5SPI02pjLaKY1" rel="stylesheet"/>

    <link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/demo.css" type="text/css">
    <link rel="stylesheet" href="static/js/plugins/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" href="static/js/plugins/layer/skin/moon/style.css" type="text/css">

	<script src="static/Content/scripts/utils/learun.js?v=AfeCneuZAYcYQ_oDc_NcFhRe318AoiA7nEzz08vcf9E1"></script>
	<script src="static/Content/scripts/plugins/tree/js?v=juUOPsC80vp0oU0mDF6kU_w_oqCesh68O0OtnzL7Wk81"></script>
	<script src="static/Content/scripts/plugins/validator/js?v=znSfnIdhHxxCqs-Qu0ubgsaRj2oDtXtihP0fEoemDWs1"></script>
	<script src="static/Content/scripts/plugins/wizard/js?v=B2NDCyjwoq-6l3qQjPYTbrSsjg6SllBIwuY10rqKT5g1"></script>
	<script src="static/Content/scripts/plugins/datepicker/js?v=B0RLtvjnn7QkPWLaYcMEAeEpC0XCKigX6gEmWC4zrKk1"></script>
	<script src="static/js/plugins/layer/laydate/laydate.js" type="text/JavaScript"></script>
    <style>
        .line{
            position: static;
        }
        .menuContent {
            position: absolute;
            left: 52px;
            top: 112px;
            display: block;
        }
    </style>
</head>
<body>
<div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;">
</div>
<form id="myform">
    <input type="hidden" name="companyId" id="companyId" value="${company.id}" />
	<div id="form-body" style="overflow: auto;">
		<div style="margin-top: 20px; margin-right: 30px;">
			<table class="form" style="table-layout: auto;">
				<tr>
					<th class="formTitle">岗位名称<font face="宋体">*</font></th>
					<td class="formValue custmerTd" colspan="3">
						<input type="text" class="form-control" name="name" id="name" value="" >
					</td>
				</tr>
				<tr>
					<th class="formTitle">岗位编号</th>
					<td class="formValue custmerTd" colspan="3">
						<input type="text" class="form-control" name="enCode" id="enCode" value="" >
					</td>
				</tr>
				<tr>
                    <th class="formTitle">所属部门<font face="宋体">*</font></th>
                    <td class="formValue custmerTd" >
                        <input type="hidden" name="deptId" id="deptId" value=""/>
                        <input type="text" class="form-control" name="deptName" id="deptName" value="" onclick="showDept();" readonly >
                    </td>
                    <td class="formValue custmerTd" >
                        <button class="btn btn-primary" type="button" onclick="showDept();"  style="float:left;">选择</button>
                    </td>
				</tr>
				<th class="formTitle">上级岗位</th>
                <td class="formValue custmerTd" >
                    <input type="hidden" name="parentId" id="parentId" value="${postParent.id}"/>
                    <input type="text" class="form-control" name="parentName" id="parentName" value="${postParent.name}" onclick="showPost();" readonly >
                </td>
                <td class="formValue custmerTd" >
                    <button class="btn btn-primary" type="button" onclick="showPost();"  style="float:left;">选择</button>
                </td>
                <tr>
                    <th class="formTitle">备注</th>
                    <td class="formValue custmerTd" colspan="3">
                        <textarea name="description" id="description" class="form-control"></textarea>
                    </td>
                </tr>
			</table>
		</div>
	</div>
	<div class="form-button" id="wizard-actions">
		<a class="btn btn-success" onclick="AcceptClick('Y')">提交</a>
	</div>
	<input name="__RequestVerificationToken" type="hidden" value="6GEBVzr2OUes72xMjMJuDbqgyM19QA-TYxrAUNqxyb8_jATbxM9KN59VKp0bfkvZFjSU0thx1OKU3SyxbV2jsuE2wwWclFGYO73Zf0u_4_A1" />
</form>
<div id="deptMenu" class="menuContent" style="display:none; position: absolute;z-index:99999;">
    <ul id="deptTree" class="ztree" style="margin-top:0; width:307px; height: 150px;"></ul>
</div>
<div id="postMenu" class="menuContent" style="display:none; position: absolute;z-index:99999;">
    <ul id="postTree" class="ztree" style="margin-top:0; width:307px; height: 130px;"></ul>
</div>
<!-- ztreejs -->
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.excheck.js"></script>
<script type="text/javascript" src="static/js/plugins/zTree_v3-master/js/jquery.ztree.exedit.js"></script>
</body>
</html>
<SCRIPT type="text/javascript">
    /*上级部门树形菜单*/
    var setting1 = {
        async: {
            enable: true,
            url:"${pageContext.request.contextPath}/admin/system/dept/list_o.html?companyId="+$("#companyId").val(),
            autoParam:["id"],
            otherParam:{"checkId":$("#deptId").val()},
            dataFilter: filter1
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
                rootPId: "-1"
            }
        },
        view: {
            dblClickExpand: false,
            nameIsHTML:true
        },
        callback: {
            onClick: onClick1,
            onCheck: onCheck1
        }
    };
    function filter1(treeId, parentNode, childNodes) {
        if (!childNodes) return null;
        for (var i=0, l=childNodes.length; i<l; i++) {
            childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
        }
        return childNodes;
    }
    //
    function onClick1(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("deptTree");
        zTree.checkNode(treeNode, !treeNode.checked, null, true);
        return false;
    }
    function onCheck1(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("deptTree"),
            nodes = zTree.getCheckedNodes(true);
        if(nodes!=""){
            $("#deptName").val(nodes[0].name);
            $("#deptId").val(nodes[0].id);
        }
    }

    function showDept() {
        var cityObj = $("#deptName");
        var cityOffset = $("#deptName").offset();
        $("#deptMenu").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
        $("body").bind("mousedown", onBodyDown1);
    }
    function hideMenu1() {
        $("#deptMenu").fadeOut("fast");
        $("body").unbind("mousedown", onBodyDown1);
    }
    function onBodyDown1(event) {
        if (!(event.target.id == "menuBtn" || event.target.id == "deptName" || event.target.id == "deptMenu" || $(event.target).parents("#deptMenu").length>0)) {
            hideMenu1();
        }
    }
    /*上级岗位树形菜单*/
    var setting = {
        async: {
            enable: true,
            url:"${pageContext.request.contextPath}/admin/system/post/list_o.html?companyId="+$("#companyId").val(),
            autoParam:["id"],
            otherParam:{"checkIds":$("#parentId").val()},
            dataFilter: filter1
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
                rootPId: "-1"
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
        var zTree = $.fn.zTree.getZTreeObj("postTree");
        zTree.checkNode(treeNode, !treeNode.checked, null, true);
        return false;
    }
    function onCheck(e, treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("postTree"),
            nodes = zTree.getCheckedNodes(true);
        if(nodes!=""){
            $("#parentName").val(nodes[0].name);
            $("#parentId").val(nodes[0].id);
        }
    }

    function showPost() {
        var cityObj = $("#parentName");
        var cityOffset = $("#parentName").offset();
        $("#postMenu").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");
        $("body").bind("mousedown", onBodyDown);
    }
    function hideMenu() {
        $("#postMenu").fadeOut("fast");
        $("body").unbind("mousedown", onBodyDown);
    }
    function onBodyDown(event) {
        if (!(event.target.id == "menuBtn" || event.target.id == "parentName" || event.target.id == "postMenu" || $(event.target).parents("#postMenu").length>0)) {
            hideMenu();
        }
    }
    $(document).ready(function(){
        $.fn.zTree.init($("#deptTree"), setting1);
        $.fn.zTree.init($("#postTree"), setting);
    });
</SCRIPT>
<script>
    //保存表单
    function AcceptClick(sendStatus) {
        if ($("#name").val() == "") {
            top.dialogTop('请填写名称', 'error');
            return false;
        }
        if ($("#deptId").val() == "") {
            top.dialogTop('请选择所属部门', 'error');
            return false;
        }
        $.SaveForm({
            url: "${pageContext.request.contextPath}/admin/system/post/insert_o.html",
            param: $('#myform').serialize(),
            loading: "提交",
            success: function () {
                $.currentIframe().$("#gridTable").trigger("reloadGrid");
            }
        })
    }
</script>
<script>
    $(function () {
        learun.childInit();
    })
</script>

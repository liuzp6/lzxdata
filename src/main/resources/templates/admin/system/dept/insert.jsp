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

	<script src="static/Content/scripts/utils/learun.js?v=AfeCneuZAYcYQ_oDc_NcFhRe318AoiA7nEzz08vcf9E1"></script>
	<script src="static/Content/scripts/plugins/tree/js?v=juUOPsC80vp0oU0mDF6kU_w_oqCesh68O0OtnzL7Wk81"></script>
	<script src="static/Content/scripts/plugins/validator/js?v=znSfnIdhHxxCqs-Qu0ubgsaRj2oDtXtihP0fEoemDWs1"></script>
	<script src="static/Content/scripts/plugins/wizard/js?v=B2NDCyjwoq-6l3qQjPYTbrSsjg6SllBIwuY10rqKT5g1"></script>
	<script src="static/Content/scripts/plugins/datepicker/js?v=B0RLtvjnn7QkPWLaYcMEAeEpC0XCKigX6gEmWC4zrKk1"></script>
	<script src="static/js/plugins/layer/laydate/laydate.js" type="text/JavaScript"></script>

</head>
<body>
<div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;">
</div>
<form id="myform">
	<div id="form-body" style="overflow: auto;">
		<div style="margin-top: 20px; margin-right: 30px;">
			<table class="form" style="table-layout: auto;">
				<tr>
                    <th class="formTitle">所属公司<font face="宋体">*</font></th>
                    <td class="formValue custmerTd">
                        <input type="hidden" name="companyId" id="companyId" value="${company.id}" />
                        <input type="text" class="form-control" name="companyName" id="companyName" value="${company.name}" readonly >
                    </td>
					<th class="formTitle">上级部门</th>
					<td class="formValue custmerTd">
						<input type="hidden" name="parentId" id="parentId" value="${deptParent.id}" />
						<input type="text" class="form-control" name="parentName" id="parentName" value="${deptParent.name}" readonly >
					</td>
				</tr>
				<tr>
					<th class="formTitle">部门名称<font face="宋体">*</font></th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="name" id="name" value="" >
					</td>
					<th class="formTitle">部门编码</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="enCode" id="enCode" value="" >
					</td>
				</tr>
				<tr>
					<th class="formTitle">部门简称</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="shortName" id="shortName" value="" >
					</td>
					<th class="formTitle">负责人</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="manager" id="manager" value="" >
					</td>
				</tr>
				<tr>
					<th class="formTitle">电话</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="outerPhone" id="outerPhone" value="" >
					</td>
					<th class="formTitle">分机号</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="innerPhone" id="innerPhone" value="" >
					</td>
				</tr>
				<tr>
					<th class="formTitle">邮箱</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="email" id="email" value="" >
					</td>
					<th class="formTitle">传真</th>
					<td class="formValue custmerTd">
						<input type="text" class="form-control" name="fax" id="fax" value="" >
					</td>
				</tr>
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
<!-- 上传js -->
<script type="text/javascript" src="static/js/mywebupload/upload.js"></script>
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
            //url:"${pageContext.request.contextPath}/admin/system/menu/listDo.html",
            url:"${pageContext.request.contextPath}/admin/system/dept/list_o.html",
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
            $("#parentName").val(nodes[0].name);
            $("#parentId").val(nodes[0].id);
        }
    }

    function showMenu() {
        var cityObj = $("#parentName");
        var cityOffset = $("#parentName").offset();
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
    //保存表单
    function AcceptClick(sendStatus) {
        if ($("#companyId").val() == "") {
            top.dialogTop('所属公司为空，请联系管理员，或者重试', 'error');
            return false;
        }
        if ($("#name").val() == "") {
            top.dialogTop('请填写部门名称', 'error');
            return false;
        }
        $.SaveForm({
            url: "${pageContext.request.contextPath}/admin/system/dept/insert_o.html",
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

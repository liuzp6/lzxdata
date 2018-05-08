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
<form id="form1">
	<div id="form-body" style="overflow: auto;">
		<div style="margin-top: 20px; margin-right: 30px;">
			<table class="form" style="table-layout: auto;">
				<input  type="hidden" name="visitId" id="visitId" value="${customVisit.visitId} " />
				<tr>
					<th class="formTitle">联系人:</th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control" readonly="readonly" name="lxrName" id="lxrName" value="${customVisit.lxrName}">
					</td>
					<th class="formTitle">联系电话:</th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control" readonly="readonly" name="lxdh" id="lxdh" value="${customVisit.lxdh}">
					</td>
				</tr>
				<tr>
					<th class="formTitle">拜访内容:</th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control" readonly="readonly" name="bfnr" id="bfnr" value="${customVisit.bfnr}">
					</td>
					<th class="formTitle">拜访方式:</th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control" readonly="readonly" name="bffs" id="bffs" value="${customVisit.bffs}">
					</td>
				</tr>
				<tr>
					<th class="formTitle">拜访时间:</th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control input-datepicker" readonly="readonly"
							   name='bfsj' id='bfsj' value="<fmt:formatDate value="${customVisit.bfsj}" pattern="yyyy-MM-dd HH:mm"/>"	/>

					</td>
				</tr>

			</table>
		</div>
	</div>

	<div id="selectUserList_background" style="display: none; width: 100%; height: 100%; opacity: 0.0; filter: alpha(opacity=00); background: #fff; position: absolute; top: 0; left: 0; z-index: 100;"></div>
	<div id="selectUserList" style="box-shadow: 0 0px 12px rgba(0,0,0,.175); position: fixed; top: 0px; left: 1100px; z-index: 101; width: 230px; border-left: 1px solid #ccc; background: #fff; overflow: hidden; overflow-y: auto; display: none;">
	</div>

	<input name="__RequestVerificationToken" type="hidden" value="6GEBVzr2OUes72xMjMJuDbqgyM19QA-TYxrAUNqxyb8_jATbxM9KN59VKp0bfkvZFjSU0thx1OKU3SyxbV2jsuE2wwWclFGYO73Zf0u_4_A1" />
</form>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function(){
        path=/mbkh/;
    });
</script>
<script>

</script>
<script>
    $(function () {
        learun.childInit();
    })
</script>

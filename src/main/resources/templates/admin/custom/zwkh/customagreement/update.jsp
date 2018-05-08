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
<form id="form">
	<div id="form-body" style="overflow: auto;">
		<div style="margin-top: 20px; margin-right: 30px;">
			<table class="form" style="table-layout: auto;">
				<input  type="hidden" name="agreementId" id="agreementId" value="${customAgreement.agreementId} " />
				<tr>
					<th class="formTitle">客户名下的协议名称:<font>*</font></th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control" name="khxymc" id="khxymc" value="${customAgreement.khxymc}">
					</td>
					<th class="formTitle">协议编码:<font>*</font></th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control" name="xybm" id="xybm" value="${customAgreement.xybm}">
					</td>
				</tr>
				<tr>
					<th class="formTitle">协议起始日期:<font>*</font></th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control input-datepicker" readonly="readonly"
							   name='startdtime' id='startdtime' value="<fmt:formatDate value="${customAgreement.startdtime}" pattern="YYYY-MM-DD HH:mm"/>"
							   onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" />
					</td>
					<th class="formTitle">协议终止日期:<font>*</font></th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control input-datepicker" readonly="readonly"
							   name='endtime' id='endtime' value="<fmt:formatDate value="${customAgreement.endtime}" pattern="YYYY-MM-DD HH:mm"/>"
							   onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})" />
					</td>
				</tr>
				<tr>
					<th class="formTitle">备注:</th>
					<td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
						<input type="text" class="form-control" name="beizhu" id="beizhu" value="${customAgreement.beizhu}">
					</td>
				</tr>

			</table>
		</div>
	</div>
	<div class="form-button" id="wizard-actions">
		<a class="btn btn-success" onclick="AcceptClick('Y')">提交</a>
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
    //保存表单
	var flag = true;
    function AcceptClick(sendStatus) {
        var khxymc=$("#khxymc").val();
        var agreementId=$("#agreementId").val();
        if (!khxymc) {
            top.dialogTop('请填客户名下的协议名称', 'error');
            return false;
        }
        if($("#xybm").val() == ""){
            top.dialogTop('请填写协议编码', 'error');
            return false;
        }
        if($("#startdtime").val() == ""){
            top.dialogTop('请填写起始日期', 'error');
            return false;
        }
        if($("#endtime").val() == ""){
            top.dialogTop('请填写终止日期', 'error');
            return false;
        }

        $.ajax({
            url:"${pageContext.request.contextPath}/admin/custom/customagreement/khmcajax_o.html",
            type:'POST',
            async:false,
            dataType:"json",
            data:{"khxymc":khxymc,"agreementId":agreementId},
            success:function (msg) {
                if(msg == "1"){
                    top.dialogTop("客户名称重复", 'error');
                    flag = false;
                    return false;
                }else{
                    flag = true;
                    return true;
                }
            }
        })
        if(flag == false){
            return false;
        }

        /*var postData = {
            agreementId: $("#agreementId").val(),
            khxymc: $("#khxymc").val(),
            xybm: $("#xybm").val(),
            startdtime: $("#startdtime").val(),
            endtime: $("#endtime").val(),
            beizhu: $("#beizhu").val()
        }*/
        $.SaveForm({
            url: "${pageContext.request.contextPath}/admin/custom/customagreement/updateDo.html",
            param: $('#form').serialize(),
            loading: "提交",
            success: function () {
                window.parent[2].$("#gridTable").trigger("reloadGrid");
            }
        })
    }
</script>
<script>
    $(function () {
        learun.childInit();
    })
</script>

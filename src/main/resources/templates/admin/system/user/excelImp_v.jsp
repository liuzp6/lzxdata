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
    <div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;"></div>
    <form id="form1">
        <div id="form-body" style="overflow: auto;">
            <div style="margin-top: 20px; margin-right: 30px;">
                <table class="form" style="table-layout: auto;">
                    <tr>
                        <th class="formTitle">模板:</th>
                        <td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
                            <a id="btn_Search" class="btn btn-primary" href="${pageContext.request.contextPath}/admin/system/user/excelImpTemplate.html"><i class="fa fa-cloud-download"></i>&nbsp;下载</a>
                        </td>

                    </tr>

                    <tr>
                        <th class="formTitle">附件:</th>
                        <td class="formValue custmerTd" data-type="datetime" data-value="90be3ec7-02d8-9dda-ef4f-24b8ebf58a0e" colspan="4">
                            <div id="attachment" class="uploader"></div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="form-button" id="wizard-actions">
            <a class="btn btn-success" onclick="AcceptClick('Y')">导入</a>
        </div>
    </form>
	<!-- 上传js -->
	<script type="text/javascript" src="static/js/mywebupload/upload.js"></script>
	<!-- 上传文件js -->
	<script type="text/javascript" src="static/js/mywebupload/fileupload.js"></script>
</body>
</html>
<script type="text/javascript">
    $(function() {
        path='${pageContext.request.contextPath}/';
        $("#attachment").filePowerWebUpload({ auto: true,fileNumLimit:1,type:"file",fileName:"attachments" });
    });
</script>

<script>
    //保存表单
    function AcceptClick(sendStatus) {
        var attachments = $("[name='attachments']").val();
        if (!attachments) {
            top.dialogTop('请选择附件', 'error');
            return false;
        }
        var postData = {
            attachments: attachments
        }
        $.SaveForm({
            url: "${pageContext.request.contextPath}/admin/system/user/excelImp_o.html",
            param:{"attachments":attachments},
            type:'post',
            dataType: "json",
            success: function(data, status, xhr){
				dialogAlert(data.message);
            }
        });


    }
</script>
<script>
    $(function () {
        learun.childInit();
    })
</script>

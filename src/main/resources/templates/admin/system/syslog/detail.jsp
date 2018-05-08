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


    <!-- 代码显示组建 -->
    <link href="static/js/plugins/codemirror/lib/codemirror.css" rel="stylesheet">
    <link href="static/css/plugins/codemirror/lib/ambiance.css" rel="stylesheet">

    <script src="static/Content/scripts/utils/learun.js?v=AfeCneuZAYcYQ_oDc_NcFhRe318AoiA7nEzz08vcf9E1"></script>
    <script src="static/Content/scripts/plugins/tree/js?v=juUOPsC80vp0oU0mDF6kU_w_oqCesh68O0OtnzL7Wk81"></script>
    <script src="static/Content/scripts/plugins/validator/js?v=znSfnIdhHxxCqs-Qu0ubgsaRj2oDtXtihP0fEoemDWs1"></script>
    <script src="static/Content/scripts/plugins/wizard/js?v=B2NDCyjwoq-6l3qQjPYTbrSsjg6SllBIwuY10rqKT5g1"></script>
    <script src="static/Content/scripts/plugins/datepicker/js?v=B0RLtvjnn7QkPWLaYcMEAeEpC0XCKigX6gEmWC4zrKk1"></script>
    <script src="static/js/plugins/layer/laydate/laydate.js" type="text/JavaScript"></script>

    <script src="static/js/plugins/codemirror/lib/codemirror.js"></script>
    <script src="static/js/plugins/codemirror/mode/javascript/javascript.js"></script>


    <script src="static/js/content.min.js?v=1.0.0"></script>


    <style>



    </style>
</head>
<body>
<div id="ajaxLoader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #f1f1f1; z-index: 10000; overflow: hidden;">
</div>
<form id="form1">
    <div id="form-body" style="overflow: auto;">
        <div style="margin-top: 20px; margin-right: 30px;">
            <table class="form" style="table-layout: auto;">
                <tr>
                    <th class="formTitle">操作时间:</th>
                    <td class="formValue custmerTd"  >
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.createTime}" style="color: #000000;" >
                    </td>
                    <th class="formTitle">操作用户:</th>
                    <td class="formValue custmerTd"  >
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.username}" style="color: #000000;" >
                    </td>
                    <th class="formTitle">IP地址:</th>
                    <td class="formValue custmerTd"  >
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.ip}" style="color: #000000;" >
                    </td>
                </tr>
                <tr>
                    <th class="formTitle">系统功能:</th>
                    <td class="formValue custmerTd"  >
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.function}" style="color: #000000;" >
                    </td>
                    <th class="formTitle">操作类型:</th>
                    <td class="formValue custmerTd"  >
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.operationType}" style="color: #000000;" >
                    </td>
                    <th class="formTitle">执行结果:</th>
                    <td class="formValue custmerTd"  >
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.operationResult}" style="color: #000000;" >
                    </td>

                </tr>
                <tr>
                    <th class="formTitle">访问地址:</th>
                    <td class="formValue custmerTd" colspan="5">
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.url}" style="color: #000000;" >
                    </td>
                </tr>
                <tr>
                    <th class="formTitle">方法:</th>
                    <td class="formValue custmerTd"  colspan="5">
                        <input type="text" class="form-control" name="parentName" id="parentName" value="${sysLogEntity.method}" style="color: #000000;" >
                    </td>

                </tr>
                <tr>
                    <th class="formTitle">参数:</th>
                    <td class="formValue custmerTd"  colspan="5">
                        ${sysLogEntity.params}
                    </td>
                </tr>
                <tr>
                    <th class="formTitle">执行结果描述:</th>
                    <td class="formValue custmerTd"  colspan="5">
                        <textarea id="editor" name="editor">${sysLogEntity.operationContent}</textarea>
                    </td>
                </tr>
                <tr>
                    <th class="formTitle">异常信息堆栈:</th>
                    <td class="formValue custmerTd"  colspan="5">
                        <textarea id="editor1" name="editor1">${sysLogEntity.operationContentExt}</textarea>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="form-button" id="wizard-actions">
        <a class="btn btn-success" onclick="AcceptClick('Y')">关闭</a>
    </div>
</form>
</body>
</html>
<script>
    //关闭
    function AcceptClick(sendStatus) {
        dialogClose();
        //$.currentIframe().$("#gridTable").trigger("reloadGrid");
    }
    $(function () {
        learun.childInit();
        //代码高亮
        var myTextarea = document.getElementById('editor');
        var myTextarea1 = document.getElementById('editor1');
        var CodeMirrorEditor = CodeMirror.fromTextArea(myTextarea, {
            mode: "text/javascript",
            matchBrackets:true,
            styleActiveLine:true,
            lineNumbers: true
        });
        CodeMirrorEditor.setSize('auto','auto');
        var CodeMirrorEditor1 = CodeMirror.fromTextArea(myTextarea1, {
            lineNumbers: true,
            matchBrackets: true,
            styleActiveLine:true,
            lineWrapping:true,
            mode: "text/x-java"


        });
        CodeMirrorEditor1.setSize('auto','200px');
    })
</script>



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

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>二维码</h5>
                    </div>
                    <div class="ibox-content">
                        <form method="post" name="myform" id="myform" class="form-horizontal">
                             <div class="form-group">
                                <label class="col-sm-1 control-label">地址</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" name="encoderContent" id="encoderContent"> 
                                </div>
                              </div>
                              <div class="form-group"> 
                                <div class="col-sm-4">
                                     <button class="btn btn-primary" type="button" onclick="createTwoD()">生成二维码</button>
                                     <input type="hidden" name="name" id="name" value="">
                                     <button class="btn btn-primary" type="button" onclick="window.print()">打印二维码</button>
                                     <a class="btn btn-primary" href="" id="download" onclick="return saveTwoD()">二维码另存为</a>
                                </div>
                                <label class="col-sm-5 control-label"></label>
                             </div>
                        </form>
                        <div>
                        	<img id="encoderImgId" cache="false" src="${pageContext.request.contextPath}/static/img/default.png" width="265px" height="265px;"/>
                        </div>
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
	<script src="static/js/layerutil.js" type="text/javascript"></script>
</body>


</html>
<script>
//生成二维码
function createTwoD(){
	if($("#encoderContent").val()==""){
		layer.msg("请填写地址",{icon: 2,time: 2000},function(){});
		$("#encoderContent").focus();
		return false;
	}
	$("#encoderImgId").attr("src","${pageContext.request.contextPath}/static/img/jzx.gif");
	$.ajax({
		type: "POST",
		url: '${pageContext.request.contextPath}/admin/demo/twoDimensionCode/createTwoDimensionCode.html',
    	data: {encoderContent:$("#encoderContent").val(),tm:new Date().getTime()},
		dataType:'json',
		cache: false,
		success: function(data){
			 if("1" == data.result){
				 layer.msg("操作成功：",{icon: 1,time: 2000},function(){});
				 $("#encoderImgId").attr("src","${pageContext.request.contextPath}/upload/twoDimensionCode/" + data.message);       
			 	 $("#name").val(data.message);
			 	 $('#download').attr('href',"${pageContext.request.contextPath}/admin/demo/twoDimensionCode/downTwoDimensionCode.html?name="+data.message);
			 }else{
				 layer.msg("操作失败："+data.message,{icon: 2,time: 2000},function(){});
				 $("#encoderImgId").attr("src","${pageContext.request.contextPath}/static/img/default.png");
				 return;
			 }
		},
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        	$("#encoderImgId").attr("src","${pageContext.request.contextPath}/static/img/default.png");
			layer.msg("操作失败，请联系管理员！",{icon:2,time:2000}, function(){}); 
        }
	});
	
}
function saveTwoD(){
	if($("#name").val()==""){
		layer.msg("尚未生成二维码 ",{icon: 2,time: 2000},function(){});
		return false;
	}else{
		return true;
	}
}

$(function(){
	$("#encoderContent").val(window.location.href);
}) ;

</script>
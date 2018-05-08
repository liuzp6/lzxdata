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
    <meta name="description" content="${settings.description}">

    <link rel="shortcut icon" href="favicon.ico"> 
    <link href="static/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="static/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="static/css/animate.min.css" rel="stylesheet">
    <link href="static/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    
    <!--引入CSS-->

    <link rel="stylesheet" type="text/css" href="static/js/mywebupload/style.css" />
    <link href="static/js/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">

</head>

<body>
    <div class="wrapper wrapper-content animated fadeInRight">
         <div class="ibox float-e-margins">
             <div class="ibox-title">
                 <h5>系统设置</h5>
             </div>
             <div class="ibox-content">
                 <form method="post" name="myform" id="myform" class="form-horizontal">
                 	<input type="hidden" name="name" id="name" value="sys_cfg"/>
                 	<input type="hidden" name="id" id="id" value="${settings.id}"/> 
                     <div class="form-group">
                         <label class="col-sm-2 control-label">网站名称</label>
                         <div class="col-sm-10">
                             <input type="text" class="form-control" name="sitename" id="sitename" value="${settings.sitename}"> 
                         </div>
                     </div>
                     <div class="form-group">
                         <label class="col-sm-2 control-label">网站标题</label>
                         <div class="col-sm-10">
                             <input type="text" class="form-control" name="title" id="title" value="${settings.title }"> 
                         </div>
                     </div>
                     <div class="form-group">
                         <label class="col-sm-2 control-label">网站描述</label>
                         <div class="col-sm-10">
                             <input type="text" class="form-control" name="description" id="description" value="${settings.description }"> 
                         </div>
                     </div>
                     <div class="form-group">
                         <label class="col-sm-2 control-label">网站关键词</label>
                         <div class="col-sm-10">
                             <input type="text" class="form-control" name="keywords" id="keywords" value="${settings.keywords }"> 
                         </div>
                     </div>
                     <div class="form-group">
						<label class="col-sm-2 control-label">图片:</label>
						<div class="col-sm-10">
							<div id="uploader" class="uploader">
							</div>
                    	</div>
					</div>
                     <div class="hr-line-dashed"></div>
                     <div class="form-group">
                         <div class="col-sm-4 col-sm-offset-2">
							<button class="btn btn-primary" type="submit">提交</button>
                         </div>
                     </div>
                 </form>
             </div>
        </div>
    </div>

    <script src="static/js/jquery.min.js?v=2.1.4"></script>
    <script src="static/js/jquery.form.js"></script>
    <script src="static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="static/js/content.min.js?v=1.0.0"></script>
    <script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
	<script src="static/js/layerutil.js" type="text/javascript"></script>
    <script src="static/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="static/js/plugins/validate/messages_zh.min.js"></script>
    
    <script src="static/js/plugins/fancybox/jquery.fancybox.js"></script>
    <!-- 上传js -->
    <script type="text/javascript" src="static/js/mywebupload/upload.js"></script>
	<!-- 上传文件js -->
    <script type="text/javascript" src="static/js/mywebupload/fileupload.js"></script>
</body>


</html>
<script type="text/javascript">
	$(document).ready(function(){
		path='${pageContext.request.contextPath}';
		$(".fancybox").fancybox({openEffect:"none",closeEffect:"none"});
		$("#uploader").powerWebUpload({ auto: true,fileNumLimit:1,fileName:"imageName",type:"image" });
	}); 
</script>
<script>
$.validator.setDefaults({
    highlight: function(e) {
        $(e).closest(".form-group").removeClass("has-success").addClass("has-error")
    },
    success: function(e) {
        e.closest(".form-group").removeClass("has-error")//.addClass("has-success")
    },
    errorElement: "span",
    errorPlacement: function(error,element) {
        error.appendTo(element.is(":radio") || element.is(":checkbox") ? element.parent().parent().parent() : element.parent())
    },
}), $().ready(function() {
		var e = "<i class='fa fa-times-circle'></i> ";
		$("#myform").validate({
			focusInvalid: true, 
			onkeyup:false,
			submitHandler: function(form){  
				//loading层
				var index = layer.load(1, {
					shade: [0.1,'#fff'] //0.1透明度的白色背景
				});
				$(form).ajaxSubmit({
                    type: "post",
                    url: "${pageContext.request.contextPath}/admin/system/settings/updateDo.html",
                    dataType: "json",
                    success: function (data, status, xhr) {
						layer.close(index);
						if(data.result==1){
							layer.msg("操作成功，页面刷新生效!", {icon: 1,time: 1000}, function(){});
						}else{
							layer.msg("操作失败："+data.message,{icon: 2,time: 2000},function(){});   
						}
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
						layer.close(index);
						layer.msg("操作失败，请联系管理员！",{icon:2,time:2000}, function(){}); 
                    }
                });
			},
			rules: {
				name: "required"
			},
			messages: {
				name: e + "请输入角色名称"
			}
		})
});
</script>

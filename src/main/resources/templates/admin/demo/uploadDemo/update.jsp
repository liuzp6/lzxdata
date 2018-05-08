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
    
        <link rel="stylesheet" type="text/css" href="static/js/mywebupload/style.css" />
    <link href="static/js/plugins/fancybox/jquery.fancybox.css" rel="stylesheet">
	<style>
		.swfupload{
			left:0;
		}
		.uploadify{
			float:left;
			    background-color: #1ab394;
	    border-color: #1ab394;
	    color: #FFF;
		}
	</style>
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>修改合作社</h5>
                    </div>
                    <div class="ibox-content">
                        <form method="post" name="myform" id="myform" class="form-horizontal">
                        	<input type="hidden" name="id" id="id" value="${uploadDemo.id }"/>
                             <div class="form-group">
                                <label class="col-sm-2 control-label">标题</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="subject" id="subject"  value="${uploadDemo.subject }"> 
                                   <!--  <input type="text" class="form-control" name="" id="" value="${fileBean[0].id } "/> -->
                                </div>
                            </div>
                            <div class="form-group">
								<label class="col-sm-2 control-label">图片:</label>
									<div class="col-sm-10">
										<div id="uploader" class="uploader">
											
										</div>
                       				 </div>
							</div>
							 <div class="form-group">
							     	<label class="col-sm-2 control-label">图片:</label>
							     	<div class="col-sm-10">
								   <c:forEach items="${fileBeans }" var="fileBeans">
								   <div id="${fileBeans.id}">
								    <a href="${pageContext.request.contextPath}/admin/demo/uploadDemo/downloadFile.html?filePath=${fileBeans.realPath }">
								    ${fileBeans.realName }</a>
								   <input type="hidden" name="fileName" value='${fileBeans}'>
								  <input type="button" value="删除" onclick="removeDiv('${fileBeans.id}')"> 
								    </div>
								    </c:forEach>
                       				 </div>
							 </div>
								<div class="form-group">
								<label class="col-sm-2 control-label">文件上传:</label>
									<div class="col-sm-10">
										<div id="file" class="uploader">
											
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
    <script type="text/javascript" src="static/js/mywebupload/upload.js"></script>
    <script type="text/javascript" src="static/js/mywebupload/fileupload.js"></script>
</body>


</html>
<script type="text/javascript">
$(document).ready(function(){
	//alert($("#id").val());
	path=${contextPath};
	$(".fancybox").fancybox({openEffect:"none",closeEffect:"none"});
	 $("#uploader").powerWebUpload({ auto: true,fileNumLimit:0,type:"image",fileName:"imageName" });
	 $("#file").filePowerWebUpload({ auto: true,fileNumLimit:2,type:"file",fileName:"fileName" });
});

</script>
<script>
function del(id){
	$("#"+id).remove();
}
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
                    url: "${pageContext.request.contextPath}//ht/demo/uploadDemo/updateDo.html",
                    dataType: "json",
                    success: function (data, status, xhr) {
						layer.close(index);
						if(data.result==1){
							layer.msg("操作成功!", {icon: 1,time: 1000}, function(){
								parent.$('#table').bootstrapTable('refresh');
								layer_close();
							});
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
				nameJc: "required",
				name: "required",
				jyd: "required",
				tel: "required"
			},
			messages: {
				nameJc: e + "<span style='color:#a94442'>请输入部门简称</span>",
				name: e + "<span style='color:#a94442'>请输入注册名称</span>",
				jyd: e + "<span style='color:#a94442'>请输入经营地</span>",
				tel: e + "<span style='color:#a94442'>请输入联系电话</span>"
			}
		})
});
</script>
<script>
function removeDiv(id){
	$("#"+id).remove();

	
}
</script>

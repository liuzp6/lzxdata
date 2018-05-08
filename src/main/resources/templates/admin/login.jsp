<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/admin/path.jsp"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title>${settings.keywords} - 登录</title>
    <meta name="keywords" content="${settings.keywords}">
    <meta name="description" content="${settings.keywords}">
    <link rel="shortcut icon" href="favicon.ico"/>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="static/css/animate.min.css" rel="stylesheet">
    <link href="static/css/style.min.css" rel="stylesheet">
    <link href="static/css/login.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>
        if(window.top!==window.self){window.top.location=window.location};
    </script>

</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>欢迎使用 ${settings.keywords}</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-5">
                <form method="post" action="${pageContext.request.contextPath}/admin/login.html" name="myform" id="myform">
                    
                    <c:if test="${not empty msg}">
                        <p class="m-t-md" style='color:#a94442'>${msg }</p>
                    </c:if>
                    
                    <div><input class="form-control uname" id="username" name="username" type="text"  placeholder="用户名"></div>
                    <div><input class="form-control pword m-b" id="password" name="password" type="password" placeholder="密码"></div>
                    <c:if test="${not empty errorRemaining and errorRemaining<=0}">
                        <div style="margin-top:-16px">
                            <div style="float: left; width: 65%">
                                <input  class="form-control yzm" id="verifyCode" name="verifyCode" maxlength="4" type="text" placeholder="图片验证码">
                            </div>
                            <div style="float: left; width: 35%">
                                <img id="login_verifycode" class="form-control yzm" src="${pageContext.request.contextPath}/admin/verifyCode.html" width="100" height="30" alt="点击切换验证码"
                                     title="点击切换验证码" style="cursor: pointer; padding-top: 9px; padding-left: 9px;" />
                            </div>
                        </div>
                    </c:if>
                    <div>
       					下次自动登录<input id="rememberMe" name="rememberMe" type="checkbox" >
                    </div>
                    <div style="margin-top:40px">
                   		<button class="btn btn-success btn-block" type="submit" >登录</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                <!-- &copy; 2015 All Rights Reserved. H+ -->
            </div>
        </div>
    </div>
    
    <script src="static/js/jquery.min.js?v=2.1.4"></script>
    <script src="static/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="static/js/plugins/layer/layer.js" type="text/javascript"></script>
	<script src="static/js/layerutil.js" type="text/javascript"></script>
</body>
</html>
<script>
//点击切换验证码
$("#login_verifycode").click(function () {
    $("#login_verifycode").attr("src", "${pageContext.request.contextPath}/admin/verifyCode.html?time=" + Math.random());
});
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
    //errorClass: "help-block m-b-none",
    //validClass: "help-block m-b-none"
}), $().ready(function() {
		var e = "<i class='fa fa-times-circle'></i> ";
		$("#myform").validate({
			focusInvalid: true, 
			onkeyup:false,
			submitHandler: function(form){  
				form.submit();
				var index = layer.load(1, {
					shade: [0.1,'#fff'] //0.1透明度的白色背景
				}); 
			},
			rules: {
				username: "required",
				password: "required",
				verifyCode: "required"
			},
			messages: {
				username: e + "<span style='color:#a94442'>请输入用户名</span>",
				password: e + "<span style='color:#a94442'>请输入密码</span>",
				verifyCode: e + "<span style='color:#a94442'>请输入验证码</span>"
			}
		})
});
</script>

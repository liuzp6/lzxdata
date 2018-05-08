<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>

<html>
<head>
    <%@ include file="/WEB-INF/views/admin/path.jsp"%>
    <meta name="viewport" content="width=device-width" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${settings.title}</title>
    <link rel="icon" href="static/Content/images/favicon.ico">
    <link href="static/Content/styles/font-awesome.min.css" rel="stylesheet" />
    <link href="static/Content/scripts/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="static/Content/styles/learun-ui.css" rel="stylesheet"/>

    <link href="static/Content/styles/learun-im.css" rel="stylesheet" />
    <link href="static/Content/adminPretty/css/home?v=ff4NhDbLvUYuhLYJFjLtZK6VIWH-XKnVo7lv1qXmdkE1" rel="stylesheet"/>
    <link href="static/Content/scripts/plugins/dialog/dialog.css" id="layui_layer_dialogcss" rel="stylesheet" ></head>

<meta name="keywords" content="${settings.keywords}" />
<meta name="description" content="${settings.description}" />
</head>
<body style="overflow: hidden;">
<div id="ajax-loader" style="cursor: progress; position: fixed; top: -50%; left: -50%; width: 200%; height: 200%; background: #fff; z-index: 10000; overflow: hidden;">
    <img src="static/Content/images/ajax-loader.gif" style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; margin: auto;" />
</div>
<div class="lea-Head">
    <div class="logo" style="padding:16px 25px 0 15px;">
        <!-- <img src="static/Content/images/Prettyimage/new.logo.png" /> -->
        <img src="${pageContext.request.contextPath}${settings.logofile}" style="height:37px;margin-right:-10px;"/>
    </div>
    <div class="left-bar" id="left-bar">
        <ul class="menu" id="top-menu">
        </ul>
    </div>
    <div class="right-bar">
        <ul>
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="static/Resource/PhotoFile/System.jpg"
                         onerror="javascript: this.src = 'static/Content/images/head/user2-160x160.jpg'" class="user-image" alt="User Image">
                    <span class="hidden-xs">${user.realName }</span>
                </a>
                <ul class="dropdown-menu pull-right">
                    <li><a id="UserZl" ><i class="fa fa-user"></i>个人资料</a></li>
                    <%--<li><a id="UserXGZL" ><i class="fa fa-user"></i>修改个人资料</a></li>--%>
                    <li><a id="UserMM" ><i class="fa fa-user"></i>修改密码</a></li>
                    <li class="divider"></li>
                    <li><a  href="${pageContext.request.contextPath}/admin/logout.html"><i class="ace-icon fa fa-power-off"></i>安全退出</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<div class="lea-tabs">
    <div class="menuTabs">
        <div class="page-tabs-content">
            <a href="javascript:;" class="menuTab active" data-id="welcome.html"><i class="fa fa-home"></i>欢迎首页</a>
        </div>
    </div>
    <div class="tabs-right-tool">
        <button class="roll-nav tabLeft">
            <i class="fa fa fa-chevron-left"></i>
        </button>
        <button class="roll-nav tabRight">
            <i class="fa fa fa-chevron-right" style="margin-left: 3px;"></i>
        </button>
        <button class="roll-nav fullscreen">
            <i class="fa fa-arrows-alt"></i>
        </button>
        <div class="dropdown">
            <button class="roll-nav dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-gear "></i>
            </button>
            <ul class="dropdown-menu dropdown-menu-right" style="margin-top:40px">
                <li><a class="tabReload" href="javascript:;">刷新当前</a></li>
                <li><a class="tabCloseCurrent" href="javascript:;">关闭当前</a></li>
                <li><a class="tabCloseAll" href="javascript:;">全部关闭</a></li>
                <li><a class="tabCloseOther" href="javascript:;">除此之外全部关闭</a></li>
            </ul>
        </div>
    </div>
</div>
<div id="mainContent" class="lea-content">
    <iframe class="LRADMS_iframe" width="100%" height="100%" src="${pageContext.request.contextPath}/admin/welcome.html" frameborder="0" data-id="welcome.html"></iframe>
</div>

<div class="footer">
    <div style="float: left; width: 30%;">
        &nbsp;技术支持：<a href="http://www.learun.cn/adms/index.html" target="_blank" style="color: white;">哈尔滨凌之迅网络信息技术股份有限公司</a>
    </div>
    <div style="float: left; width: 40%; text-align: center;">
        Copyright © 2013 - 2016 By lzxuni
    </div>
    <div style="float: left; width: 30%; text-align: right;">
        <i id="btn_message" class="fa fa-comments" title="消息通知" style="width: 30px; font-size: 22px; vertical-align: middle; cursor: pointer;margin-top:-1px;margin-right:5px;display:none;"></i>
    </div>
</div>


<div id="loading_background" class="loading_background" style="display: none;"></div>
<div id="loading_manage">
    正在拼了命为您加载…
</div>
</body>
</html>
<script src="static/Content/scripts/jquery/jquery-1.10.2.min.js"></script>
<script src="static/Content/scripts/bootstrap/bootstrap.min.js"></script>
<script src="static/Content/scripts/plugins/cookie/js.js"></script>
<script src="static/Content/scripts/plugins/dialog/js.js"></script>
<script src="static/Content/scripts/utils/learun.js?v=AfeCneuZAYcYQ_oDc_NcFhRe318AoiA7nEzz08vcf9E1"></script>
<script src="static/Content/adminPretty/js?v=j8VQX9liLn03io6aHerPL2ILwPI_pfcu-JBEb84Mdfk1"></script>
<script src="static/Content/scripts/utils/imjs?v=_mb199pm9UXsBbkSzgw3ZdEoaAJG85W-F8BE3-2Oo2U1"></script>

<script>
    var contentPath = '/'.substr(0, '/'.length - 1);

    $(function () {
        checkHeight();
    });
    window.onresize=function(){
        checkHeight();
    };
    function checkHeight(){
        var totle = window.innerHeight; //$(window).height() ;
        var head = $(".lea-Head").height() ;
        var tabs = $(".lea-tabs").height() ;
        var fh =$(".footer").height();
        var value= totle-head-tabs-fh ;
        $("#mainContent").height(value);
    }
</script>

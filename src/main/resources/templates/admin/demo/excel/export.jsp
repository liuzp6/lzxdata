<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<link href="static/css/plugins/iCheck/custom.css" rel="stylesheet">

</head>

<body class="gray-bg">
	 数据库导出生成并下载excel: 
		 <a href="${htPath}/demo/excel/exportDo.html">
		 	导出
		 </a> 
    <h2>
    </h2>
</body>

</html>

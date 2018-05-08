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
	 Language: 
		 <a href="${htPath}/demo/i18nDemo/i18nDemo.html?lang=zh_CN">
		 	<spring:message code="language.cn" />
		 </a> 
	 	- 
	 	<a href="${htPath}/demo/i18nDemo/i18nDemo.html?lang=en_US">
			 <spring:message code="language.en" />
	 	</a>
    <h2>
        <spring:message code="welcome" />
    </h2>
    Locale: ${pageContext.response.locale }
    
    
    </br>
    <c:forEach var="user" items="${userList}">
    	第一次循环：用户名称：${user.username}</br>
    	<c:forEach var="role" items="${user.roleList}">
    	           第二次循环：用户角色：${role.name}</br>
    	</c:forEach>
    </c:forEach>
</body>

</html>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="application" />
<c:set var="htPath" value="${pageContext.request.contextPath}/admin/" scope="application" />
<c:set var="qtPath" value="${pageContext.request.contextPath}/qt/" scope="application" />
<c:set var="mobilePath" value="${pageContext.request.contextPath}/mobile/" scope="application" />
<c:set var="pageSize" value="10" scope="application" />
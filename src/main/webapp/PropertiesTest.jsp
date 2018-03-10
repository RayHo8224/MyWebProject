<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ray.tool.PropertyUtil"%>
<%@ page import="java.util.Properties"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Properties Test!</title>
</head>
<body>
	<h3>Test.properties</h3>
	<br>
	<%
		PropertyUtil.refresh();
		Properties prop = PropertyUtil.getProperties("Test.properties");
		String key = prop.getProperty("key");
	%>

	<h7>key=<%=key%></h7>
	<hr>
	<h7>Server 2 ,sessionId=<%=request.getSession().getId() %></h7>
</body>
</html>
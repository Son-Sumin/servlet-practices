<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- scriptlet -->
<%
	String name = request.getParameter("name");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello <%=name %></h1>
	<img src="images/맹구2.jpg" style="width:100px"/>
</body>
</html>
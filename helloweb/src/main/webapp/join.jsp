<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- scriptlet 스트링으로 넘어가니 int는 casting 필요 -->
<!-- post방식으로 한글 넘길 때 엔코딩 필수, get도 항상 써놓기 -->
<!-- hobby처럼 하나의 이름으로 여러 값이 넘어올 때 배열 주의 -->
<%
	request.setCharacterEncoding("UTF-8");

	String email = request.getParameter("email"); 
	String password = request.getParameter("password");
	String birthYear = request.getParameter("birthYear");
	String gender = request.getParameter("gender");
	String profile = request.getParameter("profile");
	
	String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4><%=email %></h4>
	<h4><%=password %></h4>
	<h4><%=birthYear %></h4>
	<h4><%=gender %></h4>
	<p><%=profile %></p>

	<%
		for(String hobby:hobbies) {
	%>
		<h4><%=hobby %></h4>
	<%
		}
	%>

</body>
</html>
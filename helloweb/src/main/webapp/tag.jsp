<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- localhost:8080/helloweb/tag.jsp 주소창에 입력-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>   
	<h1>Hello World</h1>    <!-- 제목; h6까지 있음 / 크기별 입력 가능 -->
	<h2>Hello World</h2>    <!-- h1: block element -->
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>
	
	<table border='1' cellspacing="0">  <!-- 디자인과 컨텐츠는 분리 -->
		<tr>  <!--  행 table row  -->
			<th>글번호</th>  <!-- 컬럼, 그 중 table head -->
			<th>글제목</th>
			<th>작성자</th>
		</tr>
		
		<tr>
			<td>2</td>  <!-- 컬럼, table data -->
			<td>안녕</td>
			<td>둘리</td>
		</tr>
		
		<tr>
			<td>1</td>
			<td>안녕</td>
			<td>마이콜</td>
		</tr>		
	</table>
	
		<!-- img: inline element -->
		<br/>     <!-- br: inline contents 끊고 다음 라인 실행-->
		<img src="http://localhost:8080/helloweb/images/맹구2.jpg" style="width:100px"/>
		<br/>    
		<img src="/helloweb/images/맹구2.jpg" style="width:100px"/>    <!-- /; 시작하면 절대 경로, 같은 호스트면 가능 -->
		<br/>  
		<img src="images/맹구2.jpg" style="width:100px"/>    <!-- "./" 상대 경로, 생략 가능 -->
		<p>
		문장입니다~~<br/>
		문장입니다~~<br/>
		문장입니다~~<br/>
		</p>
		
		<!-- a: inline element -->
		<a href="/helloweb/hello.jsp?name=손수민">hello로 가기1</a>   <!-- GET방법/ 4바이트까지 -->
		<br/>
		<a href="/helloweb/hello?name=손수민">hello로 가기2</a>  
		<br/>  
		<a href="form.jsp">폼으로 가기</a>
	
</body>
</html>
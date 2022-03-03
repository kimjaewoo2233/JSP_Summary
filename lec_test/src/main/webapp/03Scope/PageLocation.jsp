<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h2>이동 후 page 영역의 속성 값 읽기</h2>
		<%
			Object pInteger = pageContext.getAttribute("pageInteger");
			//page영역은 여기로 못 넘어옴  a태그로 넘겼기 떄문에 다른 페이지가 된다
		%>
		
		<div>
			객체 확인: <%=(pInteger == null)?"값 없음" :pInteger%>
		</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Person.person" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>포워드로 전달된 페이지</h2>
	<h4>RequestMain 파일의 리퀘스트영역 속성읽기</h4>
	<%
		person person = (person)request.getAttribute("requestPerson");
	%>
	<ul>
			<li>String 객체 : <%= request.getAttribute("requestString") %></li>
			<li>Person 객체 : <%= person.getName() %></li>	
	</ul>
	<%
		request.setCharacterEncoding("UTF-8");		//쿼리스트링으로 받는 것중 한글이 있어 인코딩변환함
		out.print(request.getParameter("paramHan"));
		out.print(request.getParameter("paramEng"));
	
	%>
	
	
</body>
</html>
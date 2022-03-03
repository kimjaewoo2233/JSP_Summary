<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="Person.person" %>
<%
		pageContext.setAttribute("pageInteger",1000);
		pageContext.setAttribute("pageString","test");
		pageContext.setAttribute("pagePerson",new person());
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%
			person person = (person)pageContext.getAttribute("pagePerson");
			person.setName("한석봉");
			person.setAge(88);
			
			int number = (int)(pageContext.getAttribute("pageInteger"));
			String str =pageContext.getAttribute("pageString").toString();
			%>
			<ul>
				<li><%= person.getName() %>의 나이는<%= person.getAge() %></li>
				<li><%= number %></li>
				<li><%= str %></li>
			</ul>
			<h2>include된 파일에서 page 영역 읽어오기</h2>
			<%@ include file="PageInclude.jsp" %>
			
</body>
</html>
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
			person.setName("�Ѽ���");
			person.setAge(88);
			
			int number = (int)(pageContext.getAttribute("pageInteger"));
			String str =pageContext.getAttribute("pageString").toString();
			%>
			<ul>
				<li><%= person.getName() %>�� ���̴�<%= person.getAge() %></li>
				<li><%= number %></li>
				<li><%= str %></li>
			</ul>
			<h2>include�� ���Ͽ��� page ���� �о����</h2>
			<%@ include file="PageInclude.jsp" %>
			
</body>
</html>
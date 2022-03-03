<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <%
    	int number2 = (Integer)(pageContext.getAttribute("pageInteger"));
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		include 된 number<%= number2 %>
</body>
</html>
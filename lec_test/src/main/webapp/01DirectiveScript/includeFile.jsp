<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "java.time.LocalDateTime" %>
<%@ page import = "java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	LocalDate today = LocalDate.now();	//오늘
	LocalDateTime tommorrow = LocalDateTime.now().plusDays(1);	//내일

%>
</body>
</html>
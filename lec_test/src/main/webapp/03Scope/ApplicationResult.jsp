<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="Person.person" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Map<String,person> maps = (Map<String,person>)application.getAttribute("maps");
	Set<String> keys = maps.keySet();
	for(String key : keys){
		person person = maps.get(key);
		out.print(String.format("이름:%s 나이:%d<br/>",person.getName(),person.getAge()));
	}
%>
</body>
</html>
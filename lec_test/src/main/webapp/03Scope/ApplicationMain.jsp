<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="Person.person" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>application 영역</h2>
	<%
		Map<String,person> maps = new HashMap<>();
		maps.put("actor1",new person("가메출판",22));
		maps.put("actor2",new person("한빛미디어",33));
		application.setAttribute("maps",maps);
	%>
	application 영역에 속성이 저장되었습니다.
</body>
</html>
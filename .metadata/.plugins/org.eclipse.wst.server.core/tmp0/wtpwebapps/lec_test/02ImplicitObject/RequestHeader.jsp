<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>요청 헤더 정보 출력하는 방법</h3>
	<%
		Enumeration headers = request.getHeaderNames();
		while(headers.hasMoreElements()){
			String headerName = (String)headers.nextElement();
			String headerValue = request.getHeader(headerName);
			out.print("헤더명 : "+headerName+",헤더값: "+headerValue+"<br/>");
		}
	%>
	
	<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다</p>
</body>
</html>
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
	<h3>��û ��� ���� ����ϴ� ���</h3>
	<%
		Enumeration headers = request.getHeaderNames();
		while(headers.hasMoreElements()){
			String headerName = (String)headers.nextElement();
			String headerValue = request.getHeader(headerName);
			out.print("����� : "+headerName+",�����: "+headerValue+"<br/>");
		}
	%>
	
	<p>�� ������ ���� �����ϸ� referer ������ ��µ��� �ʽ��ϴ�</p>
</body>
</html>
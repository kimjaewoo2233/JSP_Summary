<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ü - request</title>
</head>
<body>
	<h2>1. Ŭ���̾�Ʈ�� ������ ȯ������ �б�</h2>
	<ul>
		<li>������ ���� ��� Ȯ�� : <%= request.getMethod() %></li>
		<li>URL : <%= request.getRequestURL() %></li>
		<li>URI : <%= request.getRequestURI() %></li>
		<li>�������� Ȯ�� : <%= request.getProtocol() %></li>	
		<li>������ Ȯ�� : <%= request.getServerName() %></li>
		<li>���� ��Ʈ : <%= request.getServerPort() %></li>
		<li>Ŭ���̾�Ʈ IP �ּ� : <%= request.getRemoteAddr() %></li>
		<li>������Ʈ�� : <%= request.getQueryString() %></li>
		<li>���۵� �� Ȯ��: <%= request.getParameter("eng") %></li>
		<li>���۵� �� Ȯ��: <%= request.getParameter("kor") %></li>
	</ul>
</body>
</html>
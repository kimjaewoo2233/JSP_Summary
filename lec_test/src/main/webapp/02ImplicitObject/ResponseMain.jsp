<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ü - Response</title>
</head>
<body>
	<h2>1. �α��� ��</h2>
	<%
		String loginErr = request.getParameter("loginErr");
		if(loginErr != null) 
			out.print("�α��� ����");
	%>
	<form action="./ResponseLogin.jsp" method="post">
		���̵� : <input type="text" name="user_id"/><br/>
		��й�ȣ : <input type="password" name="password"/><br/>
		<input type="submit" value="�α���"/>
	</form>
	<h2>2. HTTP ���� ��� �����ϱ�</h2>
	<form action = "./ResponseHeader.jsp" method="get">
		 ��¥ ���� : <input type="text" name="add_date" value="2021-10-25"/><br/>
		 ���� ���� : <input type="text" name="add_int" value="8282"/><br/>
		 ���� ���� : <input type="text" name="add_str" value="ȫ�浿"/><br/>
		 <input type="submit" value="���� ��� ���� &���"/>
	</form>
</body>
</html>
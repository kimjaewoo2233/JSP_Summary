<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h2>web.xml�� ������ ���� �о����</h2>
	�ʱ�ȭ �Ű����� : <%= application.getInitParameter("INIT_PARAM") %>
	
	<h2>������ ������ ��� �о����</h2>
	application ���� ��ü : <%= application.getRealPath("/02ImplicitiObject") %>
	
	<h2>����ο��� application ���尴ü ����ϱ�</h2>
	<%!
		public String useImplicitObject(){
				return this.getServletContext().getRealPath("/02ImplicitiObject");
			}
				public String useImplicitObject(ServletContext app){
				return app.getRealPath("/02ImplicitObject");
			}
	%>
	<ul>
		<li>this ��� : <%= useImplicitObject() %></li>
		<li>�μ����� : <%=  useImplicitObject(application) %></li>
	</ul>
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%
				request.setCharacterEncoding("UTF-8");
				String id = request.getParameter("id");
				String sex = request.getParameter("sex");
				String[] favo = request.getParameterValues("favo");
				
				String favoStr = "";
				if(favo != null){
					for(int i = 0; i<favo.length;i++){
						favoStr = favo[i] + " ";		
					}
				}
				String intro = request.getParameter("intro").replace("\r\n","<br/>");
		%>
		<ul>
			<li><%= id %></li>
			<li><%= sex %></li>
			<li><%= favoStr %></li>
			<li><%= intro %></li>
		</ul>
</body>
</html>
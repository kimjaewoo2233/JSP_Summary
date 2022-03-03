<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Person.person" %>
<%
	request.setAttribute("reqeustString","문자테스터");
	request.setAttribute("requestPerson",new person());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>request 영역의 속성값 삭제하기</h2>
	<%
		request.removeAttribute("requestString");
		request.removeAttribute("requestInteger");//이건 없는 걸 제거하려하지만 에러가 나지 않는다.
		out.print(request.getAttribute("requestPerson").getClass().getName());	//타입확인 Person.person타입
		person person = (person)request.getAttribute("requestPerson");
		person.setAge(55);
		person.setName("아름");
		%>
	<ul>
		<li>String  객체: <%= request.getAttribute("requestString") %></li>
		<li>Person  객체: <%= person.getAge() %>,<%= person.getName() %></li>
	</ul>
	<h2>포워드된 페이지에서 request영역 속성값 읽기</h2>
			<%
				RequestDispatcher rd = request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=Engl");
				rd.forward(request,response);
			%>	

</body>
</html>
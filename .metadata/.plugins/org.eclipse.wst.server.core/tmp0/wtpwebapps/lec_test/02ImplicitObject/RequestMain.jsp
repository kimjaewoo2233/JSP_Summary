<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내장객체 - Request</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<a href="./RequestWebInfo.jsp?eng=Hello&kor=kor">
		GET
	</a>
	<br/>
	<form action="RequestWebInfo.jsp" method="post">
			영어 : <input type="text" name="eng" value="Bye"/>
			한글 : <input type="text" name="kor" value="kor"/>
			<input type="submit" value="POST"/>
	</form>
	
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
		<form method="post" action="RequestParameter.jsp">
			아이디 : <input type="text" name="id" value="" /><br/>
			성별 : 
			<input type="radio" name="sex" value="man"/>남자
			<input type="radio" name="sex" value="woman" checked="checked"/>여자
			<br/>
			관심사항 :
			<input type="checkbox" name="favo" value="eco"/>경제
			<input type="checkbox" name="favo" value="pol" checked="checked"/>정치
			<textarea name="intro" cols="30" rows="4"></textarea>
			<br/>
			<input type="submit" value="전송하기"/>
		</form>
		
		<h2>3.HTTP 요청 헤더 정보 읽기</h2>
		<a href="RequestHeader.jsp">
			요청 헤더 정보 읽기
		</a>


</body>
</html>
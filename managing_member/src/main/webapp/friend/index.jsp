<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	width:100%;
	font-size:12px; color:#555555;
	font-family:맑은 고딕; background-color:#EAD5D5;
}
a {
	color:#ffffff;
	text-decoration:none;
}
header {
	text-align:center;
	padding-top:0.3rem;
	padding-bottom:0.3rem;
	color:#ffffff; background-color:#dedede;
}
nav {
	text-align:left;
	padding-top:0.3rem;
    padding-bottom:0.3rem; 
	color:#ffffff; background-color:#555555;	
}
section {
	height:450px;
}
footer {
	text-align:center;	
	color:#ffffff; background-color:#cccccc;
}
</style>
<body>
<div>
	<header>
		<h1>친구관리</h1>
	</header>
	<nav>
	<a href="memberWrite.jsp">회원등록</a>
	<a href="memberList.jsp">회원목록조회/수정</a>
	<a href="frinedList.jsp">친구현황조회</a>
	<a href="index.jsp">홈으로</a>
	</nav>
	<section>
		<h2 align=center>친구관리 프로그램</h2>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</div>
</body>
</html>
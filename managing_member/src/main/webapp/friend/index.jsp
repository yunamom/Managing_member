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
	font-size:12px; color:#333333;
	font-family:맑은 고딕; 
}
a {
	color:#ffffff;
	text-decoration:none;
	padding-right:2rem;
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
	background-color:#EAD5D5;
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
	<%@ include file="topMenu.jsp" %>
	</nav>
	<section>
		<br>
		<h2 align="center">친구관리 프로그램</h2>
		<div>
			<h4>&nbsp;SNS에서 회원정보, 친구정보 데이터베이스를 구축하고 친구관리를 위한 프로그램을 작성한다.
			<br>
			&nbsp;프로그램 작성 순서 </h4>
			<ol>
				<li>회원정보 테이블을 생성한다.</li>
				<li>친구정보 테이블을 생성한다.</li>
				<li>회원정보 입력 프로그램을 작성한다.</li>
				<li>회원정보 조회/수정 프로그램을 작성한다.</li>
				<li>친구정보 조회 프로그램을 작성한다.</li>
			</ol>
		</div>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</div>
</body>
</html>
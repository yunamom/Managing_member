<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="main.css">
<body>
<div>
	<header>
		<h1>친구관리</h1>
	</header>
	<nav>
	<%@ include file= "topMenu.jsp" %>
	</nav>
	<section>
		<br>
		<h2 align="center">친구 등록</h2>
		<div>
		<table border="1" width="600" align="center">
			<tr>
				<th>회원번호</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>회원ID</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>등급</th>
				<td>
					<select>
						<option>특별회원</option>
						<option>우수회원</option>
						<option>일반회원</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>
					<input type="checkbox"> 독서
					<input type="checkbox"> 운동
					<input type="checkbox"> 영화
				</td>
			</tr>
			<tr>
				<th>등록일자</th>
				<td><input type="text"></td>
			</tr>
		</table>
		<div style="text-align:center;width:100%;">
			<button type="submit">등록</button>
			<button type="button">조회</button>
		</div>		
		</div>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</div>
</body>
</html>
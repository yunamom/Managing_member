<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "database.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>친구현황조회</title>
</head>
	<script>
 	function check() {
 		if (f.member_name.value == "") {
 			alert("친구검색할 회원이름을 입력해 주세요!")
 			return f.member_name.focus();
 		}
 		f.submit();
 	}
	</script>
<link rel="stylesheet" href="main.css">
<body>
	<%@ include file="topMenu.jsp" %>
	<section>
		<div class="box">
		<h2>친구현황조회</h2>
			<form action="friendList.jsp" name="f" method="post"><br><br>
 				<p style=color:#ffffff; >이름을 입력하시면 해당 회원님의 친구를 검색합니다.</p>
 				<input type="text" value="" name="member_name" size="20" autofocus><br><br>
 				<input type="submit" value="검색" onclick="check(); return false">
 			</form>
		</div>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</body>
</html>
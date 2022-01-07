<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "database.jsp" %>
<%
String sql =" SELECT ";
	   sql+=" member_no no,";
	   sql+=" member_id id,";
	   sql+=" member_name name,";
	   sql+=" member_grade grade,";
	   sql+=" member_hobby hobby,";
	   sql+=" member_date date";
	   sql+=" FROM ";
	   sql+="member_tbl";
	   sql += " ORDER BY member_id ASC";
	  
ResultSet rs = stmt.executeQuery(sql);
%>
    
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
	<%@ include file="topMenu.jsp" %>
	</nav>
	<section>
		<br>
		<h2 align="center">친구 조회/수정</h2>
		<div>
			<table align="center" border ="1" width=600px>
				<tr>
					<th>회원번호</th>
					<th>회원 ID</th>
					<th>이름</th>
					<th>등급</th>
					<th>취미</th>
					<th>날짜</th>
				</tr>
			<%
			while(rs.next()){
				String no = rs.getString("no");
				String id = rs.getString("id");
				String name = rs.getString("name");
				String grade = rs.getString("grade");
				String hobby = rs.getString("hobby");
				String date = rs.getString("date");
			%>
				<tr align="center">
					<td><%=no %></td>
					<td><%=id %></td>
					<td><%=name %></td>
					<td><%=grade %></td>
					<td><%=hobby %></td>
					<td><%=date %></td>					
				</tr>
			<%
			}
			%>
			</table>
		</div>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "database.jsp" %>
<%

String sql = " SELECT ";
	   sql+= " f.req_member_no req_no,";
	   sql+= " f.res_member_no res_no,";
	   sql+= " m.member_id id,";
	   sql+= " m.member_name name,";
	   sql+= " date_format(f.req_date, '%Y.%m.%d') date";
	   sql+= " FROM ";
	   sql+= " friend_tbl f, member_tbl m";
	   sql+= " WHERE f.res_member_no = m.member_no";
ResultSet rs = stmt.executeQuery(sql);

String no = request.getParameter("no");
if(no == null) no = "";
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
		<h2 align="center">친구현황조회<%=no %></h2>
		<div align="center">
			<table  border ="1" width=700px>
				<tr align="center">
					<th>회원ID</th>
					<th>회원명</th>
					<th>요청날짜</th>
				</tr>
				<%int cnt=0;
				
				  while(rs.next()) {
					String req_no = rs.getString("req_no");
					String id = rs.getString("id");
					String name = rs.getString("name");
					String date = rs.getString("date"); 
					if(req_no.equals(no)){
						cnt++;
					%>
				<tr align="center">
					<td><%= id%></td>
					<td><%= name%></td>
					<td><%= date%></td>
				</tr>
				
				<%
					}
				%>
				<%}%>
			</table>
			<p>친구 : <%=cnt %>명</p>
		</div>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</div>
</body>
</html>
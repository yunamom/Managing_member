<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "database.jsp" %>
<%
/*
데이터베이스로 작성하는경우 

String sql =" SELECT ";
	   sql+=" member_no     no,";
	   sql+=" member_id     id,";
	   sql+=" member_name name,";   
	   sql+=" if(member_grade='S','특별',if(member_grade='A','우수','일반'))grade,";	   
	   sql+=" ifnull(member_hobby,' ') hobby,";
	   sql+=" date_format(member_date, '%Y%m.%d') date";
	   sql+=" FROM ";
	   sql+="member_tbl";
	   sql += " ORDER BY member_id ASC"; */
	   
String sql =" SELECT ";
	   sql+=" member_no       no,";
	   sql+=" member_id       id,";
	   sql+=" member_name   name,";
	   sql+=" member_grade grade,";
	   sql+=" member_hobby hobby,";
	   sql+=" member_date   date";
	   sql+=" FROM ";
	   sql+=" member_tbl";
	   sql+=" ORDER BY member_no ASC";
	  
ResultSet rs = stmt.executeQuery(sql);

%>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>친구 조회/수정</title>
</head>
<link rel="stylesheet" href="main.css">
<body>
	<%@ include file="topMenu.jsp" %>
	<section>
	<div class="box">
	<h3>친구 조회/수정</h3>
			<table width="700px">
				<tr>
					<th>회원번호</th>
					<th>회원 ID</th>
					<th>이름</th>
					<th>등급</th>
					<th>취미</th>
					<th>날짜</th>
					<th>삭제</th>
				</tr>
			<%
			while(rs.next()){
				String no = rs.getString("no");
				String id = rs.getString("id");
				String name = rs.getString("name");
				String grade = rs.getString("grade");
				String hobby = rs.getString("hobby");
				String date = rs.getString("date");
				
				// S,A,B
				if(grade==null) grade = "";
				if(grade.equals("S")) grade ="특별";
				if(grade.equals("A")) grade ="우수";
				if(grade.equals("B")) grade ="일반";
				if(hobby==null) hobby = "";
				
				date = date.replace("-",".");
			%>
				<tr>
					<td><%=no %></td>
					<td><a href="memberModify.jsp?no=<%=no%>"><%=id %></a></td>
					<td><%=name %></td>
					<td><%=grade %></td>
					<td><%=hobby %></td>
					<td><%=date %></td>	
					<td><input type="button" onclick="location='delete.jsp?no=<%=no%>'" value="삭제"></td>			
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
</body>
</html>
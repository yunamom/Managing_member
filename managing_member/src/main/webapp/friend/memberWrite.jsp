<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%@ include file="database.jsp" %>
<%
String sql = "select max(member_no)+1 myno from member_tbl";
ResultSet rs = stmt.executeQuery(sql);
rs.next();
int myno = rs.getInt("myno");

Calendar cal = Calendar.getInstance();
int y = cal.get(Calendar.YEAR);
int m = cal.get(Calendar.MONTH)+1;
int d = cal.get(Calendar.DATE);
String date = y+"/"+m+"/"+d;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>친구등록</title>
</head>
<script>
function fn_submit(){
	
	if(document.frm.no.value == ""){
		alert("회원번호를 확인해주세요.");
		document.frm.no.focus(); return false;
	}
	if(document.frm.id.value == ""){
		alert("회원ID를 확인해주세요.");
		document.frm.id.focus(); return false;
	}
	if(document.frm.name.value == ""){
		alert("회원이름을 확인해주세요.");
		document.frm.name.focus(); return false;
	}
	document.frm.submit();
}
</script>
<link rel="stylesheet" href="main.css">
<body>
<%@ include file= "topMenu.jsp" %>
	<section>
	<div class="box">		
		<h3 align="center">친구 등록</h3>
		<form name="frm" method="post" action="memberWriteSave.jsp">
		<table width="500px">
			<tr>
				<th>회원번호</th>
				<td align="left"><input type="text" name="no" value="<%=myno%>" readonly></td>
			</tr>
			<tr>
				<th>회원ID</th>
				<td align="left"><input type="text" name="id" required></td>
			</tr>
			<tr>
				<th>이름</th>
				<td align="left"><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>등급</th>
				<td align="left">
					<!-- multiple 속성은 다중선택 -->
					<select name="grade">
						<option value="S">특별회원</option>
						<option value="A">우수회원</option>
						<option value="B">일반회원</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>취미</th>
				<td>
					<input type="checkbox" name="hobby" value="독서"> 독서
					<input type="checkbox" name="hobby" value="운동"> 운동
					<input type="checkbox" name="hobby" value="영화"> 영화
				</td>
			</tr>
			<tr>
				<th>등록일자</th>
				<td align="left"><input type="text" name="date" value="<%=date%>"></td>
			</tr>
		</table>
			<button type="submit" onclick="fn_submit(); return false;">등록</button>
			<button type="button" onclick="location='memberList.jsp'">조회</button>
		</form>
		</div>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "database.jsp" %>
<%
String member_name = request.getParameter("member_name"); //from friendSearch.jsp

String myNo = request.getParameter("no"); //from memberModify.jsp 조회버튼
String myName = request.getParameter("name"); //from memberModify.jsp 조회버튼

String nameSearch="";
if(member_name != null) { // friendSearch.jsp 에서 이름값이넘어온 경우 쿼리문을 이용해서 회원번호를 찾는다! 넘재밌당
	try{
		String sql = " SELECT ";
			   sql+= " member_no FROM member_tbl WHERE member_name = '"+member_name+"' ";
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		myNo = rs.getString("member_no");
		nameSearch = member_name;
	}catch(Exception e){
	%>
	<script>
		alert("존재하지 않는 회원입니다.");
		history.back();
	</script>
	<%
	}
} else {
	nameSearch = myName;
}
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
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[<%=nameSearch%>] 님의 친구현황</title>
</head>
<link rel="stylesheet" href="main.css">
<body>	
	<%@ include file="topMenu.jsp" %>
	<section>
	<div class="box">
		<h3>[<%=nameSearch%>] 님의 친구현황</h3>
		<table width="400px">
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
					if(req_no.equals(myNo)){ cnt++;
					%>
			<tr align="center">
				<td><%= id%></td>
				<td><%= name%></td>
				<td><%= date%></td>
			</tr>	
				<%}%>
				<%}%>
			</table>
		<p>친구 : <%=cnt %>명</p>
	</div>
	</section>
	<footer>
	HRDKOREA Copyright@2016
	</footer>
</body>
</html>
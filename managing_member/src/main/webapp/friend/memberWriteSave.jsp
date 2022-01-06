<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ include file="database.jsp" %>

<%
String no = request.getParameter("no");
String id = request.getParameter("id");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String hobby = request.getParameter("hobby");
String date = request.getParameter("date");
%>

<%
if(no == null || id == null || name == null ||
	no.equals("") || id.equals("") || name.equals("")) {
%>
	<script>
	alert("잘못된 경로로 들어왔습니다.");
	location = "index.jsp";
	</script>
<%
	return; // jsp 종료
}
//grade 가 null 일때 오류가 생겨서 수정함.
String sql="INSERT INTO member_tbl";
sql+="(member_no,member_id,member_name,member_grade,member_hobby,member_date)";
sql+="VALUES (?,?,?,?,?,?)";

PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setString(1, no);
//Similarly for the remaining 5
pstmt.setString(2, id);
pstmt.setString(3, name);
pstmt.setString(4, grade);
pstmt.setString(5, hobby);
pstmt.setString(6, date);

//And then do an executeUpdate
int result=pstmt.executeUpdate();
if(result == 1){
%>
	<script>
	alert("저장완료");
	location = "index.jsp";
	</script>
<%
}else{
%>
	<script>
	alert("저장실패");
	location = "index.jsp";
	</script>
<%
}
%>
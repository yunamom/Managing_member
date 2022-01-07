<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ include file="database.jsp" %>

<%
String no = request.getParameter("no");
String id = request.getParameter("id");
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String []h = request.getParameterValues("hobby");
String date = request.getParameter("date");
%>

<%
String hobby=null; //변수생성

if(h != null){	
	for(int i=0; i<h.length; i++){
		hobby+=h[i]+",";
	}
hobby=hobby.substring(0,hobby.length()-1);
hobby=hobby.replace("null", "");
}

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

String sql=" UPDATE member_tbl SET ";
	   sql+=" member_id = ?,member_name = ?,member_grade = ?,member_hobby = ?,member_date = ? ";
	   sql+=" WHERE member_no='"+no+"' ";

PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setString(1, id);
pstmt.setString(2, name);
pstmt.setString(3, grade);
pstmt.setString(4, hobby);
pstmt.setString(5, date);

int result=pstmt.executeUpdate();
if(result == 1){
%>
	<script>
	alert("수정완료");
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "database.jsp"%>

<%
String no = request.getParameter("no");

String sql = "DELETE FROM member_tbl WHERE member_no='"+no+"'";

PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.executeUpdate();

%>
<script>
alert("삭제완료");
location="memberList.jsp";
</script>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<%
		request.setCharacterEncoding("EUC-KR");
		String uid = request.getParameter("id");
		String res = "<h3>사용자 아이디 : " + uid + "</h3>";
		out.print(res);
	%>
</html>
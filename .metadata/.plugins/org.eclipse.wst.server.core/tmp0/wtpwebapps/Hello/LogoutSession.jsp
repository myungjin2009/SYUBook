<%@ page contentType="text/html" pageEncoding="EUC-KR" %>
<%
	session.invalidate();
	out.print("로그아웃 하였습니다.");
%>
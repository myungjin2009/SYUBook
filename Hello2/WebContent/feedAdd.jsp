<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="util.*" %>
<%@ page import="core.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("id");
	String ucon = request.getParameter("content");
	
	FeedDAO dao = new FeedDAO();
	if (dao.insert(uid,ucon) == true) {
		out.print("글작성 완료되었습니다.");
	}
	else {
		out.print("글 작성 중 오류가 발생하었습니다.");
	}
%>
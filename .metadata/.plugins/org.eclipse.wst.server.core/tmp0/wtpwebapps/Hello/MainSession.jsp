<%@ page contentType = "text/html" pageEncoding = "EUC-KR" %>
<%
	String uid = (String)session.getAttribute("id");
	if(uid == null) {
		out.print("�α��� ������ �����ϴ�.");
	}
	else {
		out.print("���� ������ �Դϴ�.");
		session.setAttribute("id","id");
	}
%>
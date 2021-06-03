<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String uid = request.getParameter("id");
	String jsonstr = request.getParameter("jsonstr");
	
	
	UserDAO dao = new UserDAO();
    if (dao.exists(uid)) {
        out.print("EX");
        return;
    }
    
	if (dao.insert(uid, jsonstr) == true) {
	    out.print("OK");
	    session.setAttribute("id",uid);
	}
	else {
	    out.print("ER");
	}
%>
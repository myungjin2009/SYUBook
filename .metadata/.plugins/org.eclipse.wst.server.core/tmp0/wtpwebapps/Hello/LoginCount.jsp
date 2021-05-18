<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%
String strcnt = (String) application.getAttribute("counter");
int count = (strcnt == null) ? 1 : Integer.valueOf(strcnt);
out.print("방문자수: " + count);
application.setAttribute("counter", String.valueOf(++count));

int testt = 10;
application.setAttribute("test", ++testt);
testt = (int) application.getAttribute("test");
out.print("테스트숫자 " + testt );
%>
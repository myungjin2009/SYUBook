<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginSession.jsp" method="post">
		<table align=center>
		<tr>
			<td colspan=2 align=center height=40><b>�α���</b><td>
		</tr>
		<tr>
			<td align=right>���̵�&nbsp;</td>
			<td><input type="text" name="id" placeholder="Email address" required></td>
		</tr>
		<tr>
			<td align=right>�н�����&nbsp;</td>
			<td><input type="password" name="ps" required></td>
		</tr>
		<tr>
			<td colspan=2 align=center height=50>
			<input type="submit" value="�α����ϱ�">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>
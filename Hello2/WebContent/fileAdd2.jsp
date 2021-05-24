<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>    
<%@ page import = "util.FileUtil" %>
<%@ page import = "core.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		String uid = null, ucon = null, ufname = null;
		byte[] ufile = null;
		request.setCharacterEncoding("utf-8");
		
		ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
		List items = sfu.parseRequest(request);
		Iterator iter = items.iterator();
		while(iter.hasNext()) {
			FileItem item = (FileItem)iter.next();
			String name = item.getFieldName();
			if(item.isFormField()) {
				String value = item.getString("utf-8");
				if(name.equals("id")) uid = value;
				else if(name.equals("content")) ucon = value;
			}
			else {
				if (name.equals("image")) {
					ufname = item.getName();
					ufile = item.get();
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,ufname,ufile);
				}
			}
		}
		
		FeedDAO dao = new FeedDAO();
		if (dao.insert(uid, ucon, ufname) == true) {
			out.print("�ۼ��Ͻ� ���� ���ε� �Ǿ����ϴ�.");
		} else {
			out.print("�ۼ� ���� ���ε� ���� �ʾҽ��ϴ�.");
		}
	
	%>
</body>
</html>
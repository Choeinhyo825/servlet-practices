<%@page import="guestbook01.com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="guestbook01.com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("utf-8");

	Long no = Long.parseLong(request.getParameter("id"));
	String pass = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(no);
	vo.setPass(pass);
	
	new GuestbookDao().delete(vo);
	
	response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제</title>
</head>
<body>
</body>
</html>
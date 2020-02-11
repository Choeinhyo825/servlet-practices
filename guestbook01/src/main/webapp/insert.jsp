<%@page import="guestbook01.com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="guestbook01.com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String pass = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPass(pass);
	vo.setContents(message);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>등록</title>
</head>
<body>
</body>
</html>
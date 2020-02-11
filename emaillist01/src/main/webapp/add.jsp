<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>
<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");

	String fn = request.getParameter("fn");
	String ln = request.getParameter("ln");
	String email = request.getParameter("email");

	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(fn);
	vo.setLastName(ln);
	vo.setEmail(email);

	new EmaillistDao().insert(vo);
	
	response.sendRedirect("/emailList01/index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 입력됨</h1>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	int count = 1;
	pageContext.setAttribute("count1", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL(forEach Tag) TEST</h1>
	<h2>${fn:length(list) }</h2>
	<c:set var="listCount" value="${fn:length(list) }"/>
	<c:forEach items="${list }" var="l" varStatus="status">
		${listCount-status.index} -> ${status.index }:${status.count } [${l.no } : ${l.name }]<br>
	</c:forEach>

	<c:set value="20" var="count2" />
	<br>===${count }===
	<br> ===${count1 }===
	<br> ===${count2 }===
</body>
</html>
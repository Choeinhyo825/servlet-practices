<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	pageContext.setAttribute("newLine", "\n");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>서블릿 값 받아오기</h1>
	${i }
	<br> ${l }
	<br> ${f }
	<br> ${b }
	<br> -${obj }-
	<br> ${vo.no }
	<br> ${vo.name }

	<p style="width: 100px; height: 50px; border: solid 1px #0000ff;">
		${fn:replace(contents, newLine, "<br>")}</p>

	<h1>Map으로 값 받아오기</h1>
	${map.i }
	<br> ${map.l }
	<br> ${map.f }
	<br> ${map.b }

	<h1>산술 연산</h1>
	3+10*2 : ${3+10*2 }
	<br> iVal+10 : ${ i+10}

	<h1>관계 연산</h1>
	iVal == 10 : ${i==10 }
	<br> iVal < 5 : ${i<5 }
	<br> obj == null : ${obj == null }
	<br> vo == null : ${vo == null }
	<br> empty obj : ${empty obj }
	<br> empty vo : ${empty vo }

	<h1>논리 연산</h1>
	iVal == 10 && lVal < 1000 : ${i == 10 && l < 1000 }
	<br> iVal < 5 || lVal < 1000 : ${i == 10 || l < 1000 }

	<h1>요청 파라미터값 받아오기</h1>
	${param.a }
	<br> ${param.email }
</body>
</html>
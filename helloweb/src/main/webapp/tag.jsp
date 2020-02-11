<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>
	<h2>Hello World</h2>
	<h3>Hello World</h3>
	<h4>Hello World</h4>
	<h5>Hello World</h5>
	<h6>Hello World</h6>

	<!-- 절대경로 -->
	<img src="/helloweb/images/kakao.png" style="width: 100px" />
	<br>
	<!-- 상대경로 -->
	<img src="images/kakao.png" style="width: 50px" />
	<br>

	<a href="form.jsp">폼으로 가기</a>
	<br>
	<a href="index.jsp?n=최인효&a=10">메인으로 가기</a>

	<p>1월 30, 2020 1:29:17 오후 org.apache.catalina.core.StandardContext
		reload 정보: 이름이 [/helloweb]인 컨텍스트를 다시 로드하는 것을 완료했습니다.</p>

	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
		<tr>
			<td>1</td>
			<td>제목1</td>
			<td>작성자1</td>
			<td>1/23</td>
		</tr>
		<tr>
			<td>2</td>
			<td>제목2</td>
			<td>작성자2</td>
			<td>1/22</td>
		</tr>
		<tr>
			<td>3</td>
			<td>제목3</td>
			<td>작성자3</td>
			<td>1/21</td>
		</tr>
	</table>

</body>
</html>
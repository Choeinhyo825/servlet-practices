<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="join" method="post">
		이메일 : <input type="text" name="email"><br><br> 
		비밀번호 : <input type="password" name="pass"><br><br> 
		생년 : <select name="birthYear">
					<option value="1990">1990년</option>
					<option value="1991">1991년</option>
					<option value="1992">1992년</option>
					<option value="1993">1993년</option>
					<option value="1994">1994년</option>
					<option value="1995">1995년</option>
					<option value="1996">1996년</option>
					<option value="1997">1997년</option>
					<option value="1998">1998년</option>
					<option value="1999">1999년</option>
				</select> <br><br>
		성별 : 남<input type="radio" name="gender" value="m" checked="checked">
			여<input type="radio" name="gender" value="f"><br><br>
			
		취미 : 코딩<input type="checkbox" name="hobby" value="코딩">
		독서<input type="checkbox" name="hobby" value="독서">
		수영<input type="checkbox" name="hobby" value="수영">
		게임<input type="checkbox" name="hobby" value="게임"><br><br>
		소개 : <textarea name="desc"></textarea><br><br>
		<input type="submit" value="가입하기">
	</form>
</body>
</html>
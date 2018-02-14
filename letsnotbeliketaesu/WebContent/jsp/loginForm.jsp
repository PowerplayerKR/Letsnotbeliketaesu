<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>로그인 페이지</h1>
		<form action="login.do">
			<table>
				<tr>
					<td width="150px" align="center">유저네임:</td>
					<td width="150px" align="center">
					<input type="text" name="id">
					</td>
				</tr>
				<tr>
					<td width="150px" align="center">비밀번호:</td>
					<td width="150px" align="center">
					<input type="password" name="pwd">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="로그인">
								
					</td>
				</tr>
			</table>
		</form>
		<button type="button" onclick="location.href='joinForm.do'">회원가입</button>
	</center>

</body>
</html>
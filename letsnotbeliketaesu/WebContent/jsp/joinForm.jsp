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
		<h1>회원가입 페이지</h1>
		<form action="join.do">
			<table>
				<tr>
					<td width="150px" align="center">이메일:</td>
					<td width="150px" align="center">
					<input type="text" name="email">
					</td>
				</tr>
				<tr>
					<td width="150px" align="center">아이디:</td>
					<td width="150px" align="center">
					<input type="text" name="id">
					</td>
				</tr>
				<tr>
					<td width="150px" align="center">패스워드:</td>
					<td width="150px" align="center">
					<input type="password" name="pwd">
					</td>
				</tr>
				
				
				
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="회원가입">
					</td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>
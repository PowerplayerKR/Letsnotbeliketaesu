<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container{
    width: 400px;
    height: 500px;
    border:1px solid black;
    margin-top: 220px;
    background-color: silver;
  }
  #id{
  width:300px;
  height:50px;

  }
  #password{
    width: 300px;
    height: 50px;
  }
  #login{
    margin-left: 15px;
    margin-top: 70px;
  }
  #login>div{
    margin-top: 20px;
  }
  #name{
    width: 300px;
    height: 50px;
  }
  h1{
    text-align: center;

  }
  #button{
    width: 350px;

  }
  #join{
    width: 350px;
    padding-top: -20px;
  }


</style>
</head>
<body>
	<div class="container">
<h1>로그인</h1>
  <form action="login.do" id="login">
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="id" type="text" class="form-control" name="id" placeholder="Email">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="pwd" placeholder="Password">
    </div>
    <div id="button">
        <button type="submit" class="form-control btn btn-primary">로그인</button>
    </div>
    <div id="join">
  <button type="button" class="form-control btn btn-primary" onclick="location.href='joinForm.do'">회원가입</button>
    </div>
	   <%if(session.getAttribute("msg")!=null){ %>
    	<div> 아이디 또는 비밀번호가 일치하지 않습니다</div>
   <%} %>
  </form>
</div>
<script type="text/javascript">

	$(document).ready(function() {
		$("#button").click(function() {
			var userId =$("#id").val();
			var userpwd =$("#password").val();
			
			if(userId ==""){
				alert("아이디 입력하세요");
				$("#id").focus();
				return;
			}
			if(userpwd ==""){
				alert("비밀번호 입력하세요");
				$("#password").focus();
				return;
			}
		})//click
	});//ready
</script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <head>
  <style>
  .container{
    width: 400px;
    height: 500px;
    border:1px solid black;
    margin-top: 220px;
    background-color: silver;
  }
  #email{
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
	#dople{
	color: red;
	font-size: 12px;
	display: none;
	}
  </style>
  </head>
<body>

<div class="container">
<h1>회원가입 페이지</h1>
  <form action="join.do"id="login" >
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
    <p id="dople">아이디가 중복되었습니다</p>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="name" type="text" class="form-control" name="name" placeholder="Name">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="pwd" type="password" class="form-control" name="pwd" placeholder="Password">
      <input id="pwdd" type="password" class="form-control" name="pwdd" placeholder="Password">
    </div>
    <div id="button">
        <button type="submit" class="form-control btn btn-primary">회원가입</button>
    </div>
  </form>
</div>
	<script type="text/javascript">
	$('#email').keydown(function () {
		$.getJSON('json/userInfo.json',function(data){
			$.each(data["email"],function(entryIndex, entry){
				if(entry==$('#email').val()&&$('#email').val()!=''){
					$('#dople').show();
				
					return false;
				}else{
					$('#dople').hide();
				}
				
			})
			
		})
	})
	
	   $(document).ready(function() {
		var u_email = $('#email');
		var u_id = $('#name');
		var u_pwd = $('#pwd');
		
		
		
		$('#button').click(function() {
			
			var regEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z\-]+\.[A-Za-z\-]+/;
			var regId =  /^[\w\W가-힣A-Za-z]{2,20}$/;
			var regpwd =  /^(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{8,}$/;
			
			if($('#dople').css('display')!='none'){
				alert("아이디가 중복되었습니다");
				return false;
			}
			if($('#pwd').val()!=$('#pwdd').val()){
				console.log("실화다")
				return false;
			}
			
			
			if(!u_email.val() ){
				alert("이메일 주소 공백입니다 ");
				u_email.focus();
				return false;
				//이메일 공백일시
			}//email if
			else{
				if(!regEmail.test(u_email.val())){
					alert("이메일 형식이 아니거나 수 가 부족합니다.");
					u_email.focus();
					return false;
					//이메일 똑바로 못썻을시
				}// email if
			}// email else
			if(!u_id.val() ){
				alert("아이디 가 공백입니다.");
				u_id.focus();
				return false;
			}//id if
			else{
				if(!regId.test(u_id.val())){
					alert("아이디 수 가 부족합니다");
					u_id.focus();
					return false;
				}//id if
			}// id else
			if(!u_pwd.val() ){
				alert("비밀번호가  공백 입니다.");
				u_pwd.focus();
				return false;
			}//id if
			else{
				if(!regpwd.test(u_pwd.val())){
					alert("비밀번호 수 가 부족하거나 특수문자가 없습니다.");
					u_pwd.focus();
					return false;
				}//pwd if
			}// pwd else
		});
		
	   });
	</script>

</body>
</html>

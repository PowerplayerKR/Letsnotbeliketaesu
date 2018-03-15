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
<button id="sign-in-or-out-button"
        style="margin-left: 25px">Sign In/Authorize</button>
<button id="revoke-access-button"
        style="display: none; margin-left: 25px">Revoke access</button>
<script>
  var GoogleAuth;
  var SCOPE = 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile';
  function handleClientLoad() {
    // Load the API's client and auth2 modules.
    // Call the initClient function after the modules load.
    gapi.load('client:auth2', initClient);
  }

  function initClient() {
    // Retrieve the discovery document for version 3 of Google Drive API.
    // In practice, your app can retrieve one or more discovery documents.
    var discoveryUrl = 'https://www.googleapis.com/discovery/v1/apis/drive/v3/rest';

    // Initialize the gapi.client object, which app uses to make API requests.
    // Get API key and client ID from API Console.
    // 'scope' field specifies space-delimited list of access scopes.
    gapi.client.init({
        'apiKey': 'AIzaSyDABZUfzznjrglkKhO0D6TqjL3ubVEkeRg',
        'discoveryDocs': [discoveryUrl],
        'clientId': '21159077001-po55cehtbl0u7dq7c9f456955e867v5p.apps.googleusercontent.com',
        'scope': SCOPE
    }).then(function () {
      GoogleAuth = gapi.auth2.getAuthInstance();

      // Listen for sign-in state changes.
      GoogleAuth.isSignedIn.listen(updateSigninStatus);

      // Handle initial sign-in state. (Determine if user is already signed in.)
      var user = GoogleAuth.currentUser.get();
      
      setSigninStatus();
      
      // Call handleAuthClick function when user clicks on
      //      "Sign In/Authorize" button.
      $('#sign-in-or-out-button').click(function() {
        handleAuthClick();
        
      }); 
   
    });
  }

  function handleAuthClick() {
    if (GoogleAuth.isSignedIn.get()) {
      // User is authorized and has clicked 'Sign out' button.
      GoogleAuth.signOut();
    } else {
      // User is not signed in. Start Google auth flow.
      GoogleAuth.signIn();
     
      
    }
  }



  function setSigninStatus(isSignedIn) {
    var user = GoogleAuth.currentUser.get();
    var isAuthorized = user.hasGrantedScopes(SCOPE);
    var x=0;
   
    if (isAuthorized) {
      $('#sign-in-or-out-button').html('Sign out');
      $('#revoke-access-button').css('display', 'inline-block');
      $('#auth-status').html('You are currently signed in and have granted ' +
          'access to this app.');
      
  	$.ajax({
		url : "googleLogin.do",
		type : "post",// post방식
		dataType : "json",// json
		data : {
		"":user["w3"]
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n"
					+ "message:"
					+ request.responseText + "\n"
					+ "error:" + error);
		},
		success : function(json) {
			console.log(json);
		}
	});// $.ajax() end
      
      
      var form = document.createElement("form");
      form.setAttribute("action", "main.do"); //요청 보낼 주소

      document.body.appendChild(form);


      form.submit();
      GoogleAuth.signOut();



     
     	
     
     
    } else {
      $('#sign-in-or-out-button').html('Sign In/Authorize');
      $('#revoke-access-button').css('display', 'none');
      $('#auth-status').html('You have not authorized this app or you are ' +
          'signed out.');
    }
  }

  function updateSigninStatus(isSignedIn) {
    setSigninStatus();
  }
</script>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script async defer src="https://apis.google.com/js/api.js" 
        onload="this.onload=function(){};handleClientLoad()" 
        onreadystatechange="if (this.readyState === 'complete') this.onload()">
</script>
</body>
</html>

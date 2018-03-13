<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../letsnotbeliketaesu/css/reset.css">
<link rel="stylesheet" href="../letsnotbeliketaesu/css/notosanskr.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>책 읽으실?</title>
<style>
  

body {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
}
.screen_out {
	width: 0;
	height: 0;
	line-height: 0;
	text-indent: -9999px;
	overflow: hidden;
	display: block;
	position: absolute;
}
ul {
	width: 1250px;
	height: 100%;
	list-style: none;
	
	margin-left:17%;
	padding-top: 20%;
	
}
.book_wrap li {
	width: 220px;
	height: 314px;
	display: block;
	margin: 15px;
	float: left;
	position: relative;
	overflow: hidden;
}
.book_wrap a {
	text-decoration: none;
	color: #424242;
}
.book_wrap #content {
	margin: auto;
	width: 1250px;
}
.book_wrap .info_box {
	width: 220px;
	height: 170px;
	position: absolute;
	top: 170px;
	left: 0;
	background: #fff;
	transform: translateY(340px);
	transition: .3s ease;
}
.book_wrap #footer {
	clear: both;
	line-height: 20px;
}
.book_wrap h1 {
	color: orange;
}
.book_wrap hr {
	border: dotted .5px gray;
	margin: 10px;
}
.book_wrap button {
	width: 110px;
	height: 40px;
	background: #fff;
	border: 0px;
	margin-top: 25px;
	cursor: pointer;
	color: gray;
	transition: .3s ease;
	position: absolute;
}
.book_wrap .wish_btn {
	left: 0px;
	color:hotpink;
}
.book_wrap .comment_btn {
	right: 0px;
}
.book_wrap .comment_btn:hover {
	color: #4DB6AC;
}
.book_wrap li:hover .info_box {
	transform: translateY(0px);
}
.book_wrap li:hover {
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}
.book_wrap li:nth-child(7) button {
	top: 70px
}
.book_wrap li:hover::before {
	content: "";
	width: 220px;
	height: 314px;
	position: absolute;
	display: block;
	transition: .5s ease;
	background: rgba(0, 0, 0, .7)
}
.star_rating {
	letter-spacing: -4px;
}
.star_rating i {
	letter-spacing: 0;
	display: inline-block;
	margin-left: -1px;
	color: #ccc;
	text-decoration: none;
	position: relative;
}
.star_rating i.fa-star, .star_rating i.fa-star-half-o {
	color: yellow;
}
.head {
	display: block;
	position: absolute;
	width: 50%;
	height: 100%;
	top: 0;
	left: 0%;
}
.tail {
	display: block;
	position: absolute;
	width: 50%;
	height: 100%;
	top: 0;
	left: 50%;
}
#p{
    width: 1200px;
    height: 300px;
    background-color: red;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -500px 0 0 -600px; /* 크기 높이 거꾸로 값 주기*/

  }
  #trademark{
    width: 100px;
    height: 100px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -500px 0 0 -600px;
    background-color: green;
  }
  #user{
    width: 100px;
    height: 100px;
    position: absolute;
    top: 50%;
    left:50%;
    border-radius: 50px;
    margin: -350px 0 0 -100px;
    background-color: blue;
  }
  #best{
    width: 110px;
    height: 110px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -480px 0 0 -480px;
    text-decoration: none;
      color: #646464;


  }
  #recommendation{
    width: 110px;
    height: 110px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -480px 0 0 -380px;
    text-decoration: none;
      color: #646464;

  }
  #evaluation{
    width: 110px;
    height: 110px;
    position: absolute;
    top: 50%;
    left: 52%;
    margin: -480px 0 0 -310px;
    text-decoration: none;
      color: #646464;

  }
  #see{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -200px 0 0 -530px;
    text-decoration: none;
      color: #646464;
  }
  #saw{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -200px 0 0 -430px;
    text-decoration: none;
      color: #646464;
  }
  #interested{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 52%;
    margin: -200px 0 0 -310px;
    text-decoration: none;
    color: #646464;
  }
  #songeunBar{
    width: 80px;
    height: 5px;
    background-color: #DBA901;
    position: absolute;
    top: 50%;
    left: 51%;
    margin: -177px 0 0 -533px;
  }

</style>
</head>
<%int i=0; %>
<body>

	<div id="wrap">
		<div id="content"><ul class="book_wrap">
			<c:forEach var="book" items="${book}">
				<li><a href="#">
						<div class="info_box">
							<h3>${book.title}</h3>
							<div class="star_rating" id="${book.isbn}">
								<i class="fa fa-star-o fa-2x" aria-hidden="true"><div
										class="head <c:if test="${book.star_point eq 0.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 1}">true</c:if>"></div></i> <i class="fa fa-star-o fa-2x"
									aria-hidden="true"><div class="head  <c:if test="${book.star_point eq 1.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 2}">true</c:if>"></div></i> <i class="fa fa-star-o fa-2x"
									aria-hidden="true"><div class="head <c:if test="${book.star_point eq 2.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 3}">true</c:if>"></div></i> <i class="fa fa-star-o fa-2x"
									aria-hidden="true "><div class="head <c:if test="${book.star_point eq 3.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 4}">true</c:if>"></div></i> <i class="fa fa-star-o fa-2x"
									aria-hidden="true"><div class="head <c:if test="${book.star_point eq 4.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 5}">true</c:if>"></div></i>
							</div>
						
						
					<div class="book_wrap">

									<button class="wish_btn"  >

										<i class="fa fa-heart"></i>보고싶어요

									</button>

									<button class="comment_btn">

										<i class="fa fa-comment"></i> 관심없어요

									</button>

						</div>
						
						
						</div> <img src="${book.image}" alt="${book.title}"/>
				</a></li>

			</c:forEach>
		</ul></div>
	</div>
	<div id="mask"></div>
	<div id="header">
  
 <img id="trademark" src="small_g_in.png">
 <a id="best"href="#">베스트셀러</a>
 <a id="recommendation" href="#">책 추천</a>
 <a id="evaluation" href="#">책 평가 늘리기</a>
 <img id="user" src="20579b468d77bf2.jpg">
</div>
<div id="userpage">
<a id="see" href="#">보고싶어요</a>
<a id="saw" href="#">봤어요</a>
<a id="interested" href="#">관심없어요</a>
<p id="songeunBar"></p>

</div>
<div class="page">
 

</div>

	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>
	$(".wish_btn").click(function() {

					$.ajax({

						url:"DeleteLike.do",

						type:"post",//post방식

						dataType:"json",//json
					
						data:{"isbn":$(this).closest("a").find(".star_rating").attr('id')},							
						error:function(request,status,error){
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);						
						},
						success:function(json) {
							console.log(json);
						}
					});//ajax
	});
	
	
	</script>

	
</body>
</html>

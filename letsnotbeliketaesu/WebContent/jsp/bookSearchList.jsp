<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../letsnotbeliketaesu/css/header.css">
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
	padding: 0;
	margin: 0;
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
}

.book_wrap .comment_btn {
	right: 0px;
}

.book_wrap .wish_btn:hover {
	color: hotpink;
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
</style>
</head>
<%int i=0; %>
<body>

	<div id="wrap">
		<%@ include file="/template/header.jsp"%>
		<div id="content"><ul class="book_wrap">
			<c:forEach var="book" items="${searchBookList}">
				<li><a href="#">
						<div class="info_box">
							<h3>${book.title}</h3>
							<div class="star_rating" id="${book.num}">
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
							<button class="wish_btn">
								<i class="fa fa-heart"></i>보고싶어요
							</button>
							<button class="comment_btn">
								<i class="fa fa-comment"></i> 코멘트쓰기
							</button>
						</div> <img src="${book.image}" alt="${book.title}"/>
				</a></li>

			</c:forEach>
		</ul></div>
	</div>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
	$(document).ready(function () {

        
		$('.star_rating').trigger('mouseleave');
		
		
	



	
		
		
    });




	
	
		$(".star_rating  i .tail").mouseenter(
				function(event) {
					
					if ($("div").hasClass("star_rating")) {
						$(this).closest("i").parent().children("i")
								.removeClass("fa fa-star 2x").removeClass(
										"fa fa-star-o fa-2x").removeClass(
										"fa fa-star-half-o fa-2x");
						$(this).closest("i").addClass("fa fa-star fa-2x")
								.prevAll("i").addClass("fa fa-star fa-2x");
						$(this).closest("i").nextAll("i").addClass(
								"fa fa-star-o fa-2x");

					}

					return false;
				});
		4
		$(".star_rating i .head").mouseenter(
				function(event) {
				
					$(this).closest("i").parent().children("i").removeClass(
							"fa fa-star 2x").removeClass("fa fa-star-o fa-2x")
							.removeClass("fa fa-star-half-o fa-2x");
					$(this).closest("i").addClass("fa fa-star-half-o fa-2x")
							.prevAll("i").addClass("fa fa-star fa-2x");
					$(this).closest("i").nextAll("i").addClass(
							"fa fa-star-o fa-2x");

					return false;
				});

		$(".star_rating").mouseleave(
				function() {
					var a = $(this).find('.true');

					if (a.length > 0) {
						$(this).children("i").removeClass("fa fa-star fa-2x")
								.removeClass("fa fa-star-o fa-2x").removeClass(
										"fa fa-star-half-o fa-2x");

						if (a.hasClass('head')) {
							a.closest("i").addClass("fa fa-star-half-o fa-2x")
									.prevAll("i").addClass("fa fa-star fa-2x");
							a.closest("i").nextAll("i").addClass(
									"fa fa-star-o fa-2x");
						} else {
							a.closest("i").addClass("fa fa-star fa-2x")
									.prevAll("i").addClass("fa fa-star fa-2x");
							a.closest("i").nextAll("i").addClass(
									"fa fa-star-o fa-2x");
						}

					} else {
						$(this).children("i").removeClass("fa fa-star fa-2x")
								.removeClass("fa fa-star-o fa-2x").removeClass(
										"fa fa-star-half-o fa-2x");
						$(this).children("i").addClass("fa fa-star-o fa-2x");
					}

				})
		$(".star_rating .head").click(
				function(event) {

					if ($(this).hasClass("true")) {
						$.ajax({
							url:"starDelete.do",
							type:"post",//post방식
							dataType:"json",//json
							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"starPointWriter":"bong"},
								
							error:function(request,status,error){
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

							
							},
							success:function(json) {
								console.log(json);
							}
						});//$.ajax() end
						$(this).removeClass("true");
					}else if($(this).closest('.star_rating').find('.true').length==1){
						$.ajax({
							url:"starUpdate.do",
							type:"post",//post방식
							dataType:"json",//json
							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"starPointWriter":"bong","starPoint":$(this).closest('i').prevAll('i').length+0.5},
							error:function(request,status,error){
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							},
							success:function(json) {
								console.log(json);
							}
						});//$.ajax() end
						$(this).closest('.star_rating').find(
						'.true').removeClass('true')
						$(this).addClass("true");
					}else {
						$.ajax({
							url:"starInsert.do",
							type:"post",//post방식
							dataType:"json",//json
							data:{"starPoint":$(this).closest('i').prevAll('i').length+0.5,"bookNum":$(this).closest(".star_rating").attr('id'),"starPointWriter":"bong",
								"reviewNum":0},
							error:function(request,status,error){
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							},
							success:function(json) {
								console.log(json);
							}
						});//$.ajax() end
						$(this).addClass("true");
					
					}

					return false;
				});
		$(".star_rating .tail").click(
				function(event) {

					if ($(this).hasClass("true")) {
						$.ajax({
							url:"starDelete.do",
							type:"post",//post방식
							dataType:"json",//json
							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"starPointWriter":"bong"},
							error:function(request,status,error){
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							},
							success:function(json) {
								console.log(json);
							}
						});//$.ajax() end
						$(this).removeClass("true");
					}else if($(this).closest('.star_rating').find('.true').length==1){
						$.ajax({
							url:"starUpdate.do",
							type:"post",//post방식
							dataType:"json",//json
							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"starPointWriter":"bong","starPoint":$(this).closest('i').prevAll('i').length+1},
							error:function(request,status,error){
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							},
							success:function(json) {
								console.log(json);
							}
						});//$.ajax() end
						$(this).closest('.star_rating').find(
						'.true').removeClass('true')
						$(this).addClass("true");
					} 
					else {
						$.ajax({
							url:"starInsert.do",
							type:"post",//post방식
							dataType:"json",//json
							data:{"starPoint":$(this).closest('i').prevAll('i').length+1,"bookNum":$(this).closest(".star_rating").attr('id'),"starPointWriter":"bong",
								"reviewNum":0},
							error:function(request,status,error){
								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							},
							success:function(json) {
								console.log(json);
							}
						});//$.ajax() end
						
						
						$(this).closest('.star_rating').find(
								'.true').removeClass('true')
						$(this).addClass("true");
						
					}

					return false;
				});
	</script>
</body>
</html>
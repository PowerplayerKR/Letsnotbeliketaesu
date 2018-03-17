<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../letsnotbeliketaesu/css/reset.css">
<link rel="stylesheet" href="../letsnotbeliketaesu/css/notosanskr.css">
<link rel="stylesheet" href="../letsnotbeliketaesu/css/NewHader.css">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>책 읽으실?</title>
<style>


textarea {
  resize: none;
}
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
	#comment{
		width: 600px;
		height:300px;
		padding: 0px;
		background: #737373;
		margin: 0;
		padding: 0;
		position: absolute;
		top: 50%;
		left: 50%;
		margin: -150px 0 0 300px;
		display: none;
		z-index:33;
		border-radius: 2px;

		text-align: left;

	}
	#comment_content_wrap{

		width: 100%;
		height: 70%;
		position: absolute;
		top:20%;
		left: 0%;
		margin: 0;
		padding: 0;
		margin:30px 0 0 0;

	}
	#comment_content_wrap_img{
		position: absolute;
		margin: 0;
		padding: 0;
		border: 0;
		width: 15%;
		height: 40%;
		margin: -30px 0 0 15px;
	}
	#inputText{
		position: absolute;
		margin: 0;
		padding: 0;
		border: 0;
		width: 75%;
		height: 70%;
		margin:0 0 0 125px;
	}
	#comment_content_wrap_button{
		position: absolute;
		margin: 0;
		padding: 0;
		width: 60px;
		height: 40px;
		bottom:5%;
		right: 3%;
		border: 0px;
		background: yellow;
	border-radius: 20px;
	}
	#comment_content_wrap_star_rating{
		position: absolute;
		margin: -30px 0 0 125px;
		padding: 0;
		letter-spacing:0;
		display:inline-block;
		color:#ccc;
		text-decoration:none;
		position: absolute;
	}
	#comment_content_wrap_star_rating	i{
		color: #ffff00;

	}
	#body_blind_wrap{
		position: absolute;
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
		border: 0;
		z-index: 32;
		background-color: #000000;
		opacity: 0.3;
		display: none;

	}
	#comment_content_wrap_star_grade_wrap{
		width: 222px;
		height: 250px;
		position: absolute;

		margin: 0 0 0 -111px;
		z-index: 51;
		display: none;
	}
	#comment_content_wrap_star_grade_head{
		width: 100%;
		height: 10%;
		position: absolute;

	}
	#comment_content_wrap_star_grade_head_up{ margin: 2px 0 0 106px; }
	#comment_content_wrap_star_grade_body{
		width: 100%;
		height: 90%;
		position: absolute;
		margin: 25px 0 0 0;
		background: gray;
		border-radius: 10px;

	}
	#comment_blind_wrap{
		width: 100%;
		height: 100%;
		position: absolute;
		background: white;
		opacity: 0.5;
		display: none;
		z-index:50;


	}

	#comment_content_wrap_star_grade_body_star{
		width: 80%;
		height: 37px;
		margin: -20px 0 0 22px;
	}
	#comment_head{
		width: 100%;
		height: 20%;
		position: absolute;

	}
	

.carousel-inner{
  height: 600px;
  opacity: 0.6;


}
#myCarousel{
	width: 1200px;
	margin-left: 400px;
}

  #see{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: 109px 0 0 -530px;
    text-decoration: none;
      color: #646464;
  }
  #saw{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: 109px 0 0 -435px;
    text-decoration: none;
      color: #646464;
  }
  #interested{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 52%;
    margin: 109px 0 0 -380px;
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
    margin: 127px 0 0 -533px;
  }

</style>
</head>
<body>
 <jsp:include page="/template/header.jsp"></jsp:include>
 <div id="myCarousel" class="carousel slide" data-ride="carousel">

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="../letsnotbeliketaesu/jsp/ad.jpg" alt="Los Angeles"  style="width:100%;" >
      </div>

      <div class="item">
        <img src="../letsnotbeliketaesu/jsp/ac.jpg" alt="Chicago" style="width:100%;">
      </div>

      <div class="item">
        <img src="../letsnotbeliketaesu/jsp/af.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
 

	
	
	<div id="body_blind_wrap"></div>
		<div id="comment">
	<div id="comment_head">
		<h3 >?제목??dasdasdadsadasdsa <i class="fa fa-angle-down fa-1x" id="star_check">
			<div id="comment_content_wrap_star_grade_wrap">
				<div id="comment_content_wrap_star_grade_head">

					<i class="fa fa-caret-up fa-2x" id="comment_content_wrap_star_grade_head_up"></i>

				</div>
				<div id="comment_content_wrap_star_grade_body">
					<div id="comment_content_wrap_star_grade_body_infotext">
						<h4  style="display:  block; margin: 19px 61px;
						">평가 해주세요</h4>
					</div>

					<div id="comment_content_wrap_star_grade_body_mid_text">
						<h5 style="margin: 22px 63px;
">본책 확실함?</h5>

					</div>
					<div id="comment_content_wrap_star_grade_body_star">
						<div class="star_rating" style="text-align: center;">
							<i class="fa fa-star-o fa-2x"   aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
						</div>
					</div >

					<div id="comment_content_wrap_star_grade_body_bottom_text">
						<h4 style="text-align: center;margin-bottom: 15px;margin-top: 17px;">댓글 달려면 별점 클릭</h4>

					</div>




					<div class="book_wrap">
									<button class="wish_btn" >
										<i class="fa fa-heart"></i>보고싶어요
									</button>
									<button class="comment_btn">
										<i class="fa fa-comment"></i> 관심없어요
									</button>
						</div>
					</div>
				</div>
			</i>
			<i class="fa fa-times fa-2x" style=" position:absolute; right: 4%; top: 4%" id="comment_head_end"></i>
		</h3>
	</div>
		<div id="comment_blind_wrap" ></div>


		<div id="comment_content_wrap">
			<img src="http://chulsa.kr/files/attach/images/67/647/673/018/220ebc4544181643a70ac6f4af9c617f.jpg" id="comment_content_wrap_img">
			<tr></tr>
			<div  id="comment_content_wrap_star_rating" style="text-align: center;">
				<i   aria-hidden="true"></i>
				<i   aria-hidden="true"></i>
				<i   aria-hidden="true"></i>
				<i   aria-hidden="true"></i>
				<i   aria-hidden="true"></i>
			</div>
			<form>
		<textarea placeholder="여기에 댓글을 입력해주세요 " id="inputText" name="comment"></textarea>

		<input type="submit" id="comment_content_wrap_button">
			</form>

		</div>

	



	</div>
	

	
	
	<div id="wrap">

		<div id="content"><ul class="book_wrap">
		
			<c:forEach var="book" items="${book}">
				
				<li><a href="#">
						<div class="info_box">
							<h3 class="" style="font-size: 13px;">${book.title}</h3>
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
									
							<button class="wish_btn">
								<i class="fa fa-heart"></i>보고싶어요
							</button>
							
							<button class="comment_btn" data-comment="${book.content}">
								<i class="fa fa-comment"></i> 코멘트쓰기
							</button>
						</div> <img src="${book.image}" alt="${book.title}"/>
				</a></li>

			</c:forEach>
			
		</ul></div>
	</div>

<div id="userpage">
<a id="see" href="#">보고싶어요</a>
<a id="saw" href="mypage2.do">봤어요</a>
<a id="interested" href="mypage3.do">관심없어요</a>
<p id="songeunBar"></p>

</div>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>

	$(document).ready(function () {


		$('.star_rating').trigger('mouseleave');

    });

		$(".star_rating  i .tail").mouseenter(

				function(event) {

					 var offset=$(this).offset();

			           var  toolTip=$('#tool_tip');

 

			            toolTip.css({"top":offset.top+50,"left":offset.left-30});

 

			            if($(this).hasClass('true')){

			                toolTip.find('p').text('취소하기');

			            }else{

			                switch ($(this).closest('i').prevAll().length){

			                    case 0:toolTip.find('p').text('싫어요');break;

			                    case 1:toolTip.find('p').text('별로예요');break;

			                    case 2:toolTip.find('p').text('보통 이예요');break;

			                    case 3:toolTip.find('p').text('재미 있어요');break;

			                    case 4:toolTip.find('p').text('최고예요!');

			                }

			            }

 

			            toolTip.show();

					

						$(this).closest("i").parent().children("i")

								.removeClass("fa fa-star 2x").removeClass(

										"fa fa-star-o fa-2x").removeClass(

										"fa fa-star-half-o fa-2x");

						$(this).closest("i").addClass("fa fa-star fa-2x")

								.prevAll("i").addClass("fa fa-star fa-2x");

						$(this).closest("i").nextAll("i").addClass(

								"fa fa-star-o fa-2x");

 

					

 

					return false;

				});

		

		$(".star_rating i .head").mouseenter(

				function(event) {

				

					var offset=$(this).offset();

					var  toolTip=$('#tool_tip');

 

	                toolTip.css({"top":offset.top+50,"left":offset.left-30});

 

	                if($(this).hasClass('true')){

	                    toolTip.find('p').text('취소하기');

	                }else{

	                    switch ($(this).closest('i').prevAll().length){

							case 0:toolTip.find('p').text('최악 이에요');break;

							case 1:toolTip.find('p').text('재미 없어요');break;

							case 2:toolTip.find('p').text('부족 해요');break;

							case 3:toolTip.find('p').text('볼만 해요');break;

							case 4:toolTip.find('p').text('훌륭 해요');

						}

	                }

	                toolTip.show();

					

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

					  $('#tool_tip').hide();

				})

		$(".star_rating .head").click(

				function(event) {

					

					if ($(this).hasClass("true")) {

						var result = confirm('확인을 누르실경우 댓글까지 함께 삭제됩니다.')

 

					if(result){

						$.ajax({

							url:"starDelete.do",

							type:"post",//post방식

							dataType:"json",//json

							data:{"isbn":$(this).closest(".star_rating").attr('id')},

								

							error:function(request,status,error){

								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

 

							

							},

							success:function(json) {

								console.log(json);

							}

						});//$.ajax() end

						

						if($('#inputText').data('comment')!=""||$(this).closest('.info_box').find('.comment_btn').data("comment")!=""){

							$.ajax({

								url:"reviewDelete.do",

								type:"post",//post방식

								dataType:"json",//json

								data:{"isbn":$(this).closest(".star_rating").attr('id'),"review_writer":"bong"},

									

								error:function(request,status,error){

									alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

 

								

								},

								success:function(json) {

									console.log(json);

								}

							});//$.ajax() end

							

						}

						

						

						$(this).closest('.star_rating').find(

						'.true').removeClass('true')

						if($('#fake').length>0){

							$('#fake').find('.true').removeClass('true');

							$('#fake').trigger('mouseleave');

							

						}		

					  }

					}else if($(this).closest('.star_rating').find('.true').length==1){

						$.ajax({

							url:"starUpdate.do",

							type:"post",//post방식

							dataType:"json",//json

							data:{"isbn":$(this).closest(".star_rating").attr('id'),"email":"bong","starPoint":$(this).closest('i').prevAll('i').length+0.5},

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

						if($('#fake').length>0){

							console.log("ㅎ허ㅓ허허허");

							$('#fake').find('.true').removeClass('true');

							$($('#fake').children('i')[$(this).closest('i').prevAll('i').length]).find('.head').addClass('true')

							$('#fake').trigger('mouseleave');

						}		

						

					}else {

						$.ajax({

							url:"starInsert.do",

							type:"post",//post방식

							dataType:"json",//json

							data:{"starPoint":$(this).closest('i').prevAll('i').length+0.5,"isbn":$(this).closest(".star_rating").attr('id'),"reviewNum":0,"email":"bong"},

							error:function(request,status,error){

								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

							},
						

							success:function(json) {

								console.log(json);

							}

						});//$.ajax() end
						
						
						

						$(this).addClass("true");

						if($('#fake').length>0){

						

							$('#fake').find('.true').removeClass('true');

							$($('#fake').children('i')[$(this).closest('i').prevAll('i').length]).find('.head').addClass('true')

							$('#fake').trigger('mouseleave');

						}					

					}

 

					return false;

				});

		$(".star_rating .tail").click(

				function(event) {

					

					if ($(this).hasClass("true")) {

						var result = confirm('확인을 누르실경우 댓글까지 함께 삭제됩니다.')

 

						if(result){

						$.ajax({

							url:"starDelete.do",

							type:"post",//post방식

							dataType:"json",//json

							data:{"isbn":$(this).closest(".star_rating").attr('id')},

							error:function(request,status,error){

								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

							},

							success:function(json) {

								console.log(json);

							}

						});//$.ajax() end

						

						if($('#inputText').data('comment')!=""||$(this).closest('.info_box').find('.comment_btn').data('comment')!=""){

							$.ajax({

								url:"reviewDelete.do",

								type:"post",//post방식

								dataType:"json",//json

								data:{"isbn":$(this).closest(".star_rating").attr('id')},

									

								error:function(request,status,error){

									alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

 

								

								},

								success:function(json) {

									console.log(json);

								}

							});//$.ajax() end

							

						}

						

						$(this).closest('.star_rating').find(

						'.true').removeClass('true')

						if($('#fake').length>0){

							$('#fake').find('.true').removeClass('true');

							$('#fake').trigger('mouseleave');

							

						}	

					  }

					}else if($(this).closest('.star_rating').find('.true').length==1){

						$.ajax({

							url:"starUpdate.do",

							type:"post",//post방식

							dataType:"json",//json

							data:{"isbn":$(this).closest(".star_rating").attr('id'),"email":"bong","starPoint":$(this).closest('i').prevAll('i').length+1},

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

						if($('#fake').length>0){

						

							$('#fake').find('.true').removeClass('true');

							$($('#fake').children('i')[$(this).closest('i').prevAll('i').length]).find('.tail').addClass('true')

							$('#fake').trigger('mouseleave');

						}		

					} 

					else {

						$.ajax({

							url:"starInsert.do",

							type:"post",//post방식

							dataType:"json",//json

							data:{"starPoint":$(this).closest('i').prevAll('i').length+1,"isbn":$(this).closest(".star_rating").attr('id'),"email":"bong",

								"reviewNum":0},

							error:function(request,status,error){

								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

							},

							success:function(json) {

								console.log(json);

							}

						});//$.ajax() end

						

						

						

						$(this).addClass("true");

						if($('#fake').length>0){

							

							$('#fake').find('.true').removeClass('true');

							$($('#fake').children('i')[$(this).closest('i').prevAll('i').length]).find('.tail').addClass('true')

							$('#fake').trigger('mouseleave');

						}

						

					}

					console.log("5");

					return false;

				});				
		$('.comment_btn').click(function () {

	        $('#comment').show();

	        $('#body_blind_wrap').show();
	        
	        var x=$(this).closest('.info_box').find('.true');

	        $('#comment_content_wrap_star_grade_body_star .star_rating').attr('id',$(this).closest('.info_box').find('.star_rating').attr('id'));
	        
	        $(this).closest('.info_box').find('.star_rating').removeAttr('id').attr('id',"fake");
	       
	       $('#comment_content_wrap_star_rating').children('i').removeClass("fa fa-star fa-1x").removeClass("fa fa-star-o fa-1x").removeClass("fa fa-star-half-o fa-1x");
	      
	       $('#inputText').val($(this).data('comment'));

	       $('#inputText').data('comment',$(this).data('comment'));

	       if($(this).data('comment')==""){

	    	   $('#comment_content_wrap_button').attr("disabled","true");

	       }

	        if(x.hasClass('true')==true){

	        	if(x.hasClass('head')==true){

	        		$($('#comment_content_wrap_star_grade_body_star .star_rating').children('i')[x.closest('i').prevAll('i').length]).find('.head').addClass('true');	     
	        		$($('#comment_content_wrap_star_rating').children('i')[x.closest('i').prevAll('i').length]).addClass("fa fa-star-half-o fa-1x").prevAll("i").addClass("fa fa-star fa-1x");	
	        		$($('#comment_content_wrap_star_rating').children('i')[x.closest('i').prevAll('i').length]).nextAll("i").addClass("fa fa-star-o fa-1x");

	        	}

	        	else{	
	        		$($('#comment_content_wrap_star_rating').children('i')[x.closest('i').prevAll('i').length]).addClass("fa fa-star fa-1x").prevAll("i").addClass("fa fa-star fa-1x");	

	        		$($('#comment_content_wrap_star_rating').children('i')[x.closest('i').prevAll('i').length]).nextAll("i").addClass("fa fa-star-o fa-1x");         

	        			

	        			 $($('#comment_content_wrap_star_grade_body_star .star_rating').children('i')[x.closest('i').prevAll('i').length]).find('.tail').addClass('true') 

	        	}

	        	$('#comment_content_wrap_star_grade_body_star .star_rating').trigger('mouseleave');

	        }else{

	        	$('#star_check').trigger('click');
	        }


	    });

	    $('#body_blind_wrap').click(function () {

	        $('#comment').hide();

	        $(this).hide();

	        $('#comment_content_wrap_star_grade_wrap').hide();

	        $('#comment_blind_wrap').hide();

	        $('#comment_content_wrap_star_grade_body_star .star_rating').find('.true').removeClass('true');

	        $('#comment_content_wrap_star_grade_body_star .star_rating').trigger('mouseleave');

	        $('#fake').removeAttr('id').attr('id', $('#comment_content_wrap_star_grade_body_star .star_rating').attr('id'));

	        $('#comment_content_wrap_star_grade_body_star .star_rating').removeAttr('id');

	    });

		$('#comment_blind_wrap').click(function () {

			$('#comment_content_wrap_star_grade_wrap').hide();

			$(this).hide();

		});

 

		$('#star_check').click(function () {

			$('#comment_content_wrap_star_grade_wrap').show();

			$('#comment_blind_wrap').show();

	    });

		$('#comment_head_end').click(function () {

	        $('#comment_content_wrap_star_grade_wrap').hide();

	        $('#comment').hide();

	        $('#body_blind_wrap').hide();

	        $('#comment_content_wrap_star_grade_body_star .star_rating').find('.true').removeClass('true');

	        $('#comment_content_wrap_star_grade_body_star .star_rating').trigger('mouseleave');

	        $('#fake').removeAttr('id').attr('id', $('#comment_content_wrap_star_grade_body_star .star_rating').attr('id'));

	        $('#comment_content_wrap_star_grade_body_star .star_rating').removeAttr('id');

	        

	    });

	  $("form").on("submit", function(event) {

   			event.preventDefault();

   			var beforeComment=$('#inputText').data('comment');

   			var comment=$(this).find('[name=comment]').val();

   			console.log(comment)

   			if($('#comment_content_wrap_star_grade_body_star .star_rating').find('.true').hasClass('true')){

   			if(comment.trim()==""||beforeComment==comment){

   				alert("제데로 입력해주세요");

   			}else{

   				

   				if(beforeComment==""){

   				$.ajax({

					url:"reviewInsert.do",

					type:"post",//post방식

					dataType:"json",//json

					data:{"isbn":$('#comment_content_wrap_star_grade_body_star .star_rating').attr('id'),"content":comment,

						 

					},

					error:function(request,status,error){

						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

					},

					success:function(json) {

						console.log(json);

					}

				});//$.ajax() end

   					$('#fake').closest('.info_box').find('.comment_btn').data('comment',comment);

					$('#inputText').data('comment',comment);

   					}else{

   						$.ajax({

   							url:"reviewUpdate.do",

   							type:"post",//post방식

   							dataType:"json",//json

   							data:{"isbn":$('#comment_content_wrap_star_grade_body_star .star_rating').attr('id'),"content":comment,

   							

   							},

   							error:function(request,status,error){

   								alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

   							},

   							success:function(json) {

   								console.log(json);

   							}

   						});//$.ajax() end

   						$('#fake').closest('.info_box').find('.comment_btn').data('comment',comment);

   						$('#inputText').data('comment',comment);

   					}

   				

   			}

   		}else{

   			$('#star_check').trigger('click');

   			}

		});

	

	  $("textarea").on('keydown keyup',function(){

	    	

	    	if($(this).val().length>2000||$(this).val().length==0){

	    		

	    		$("#comment_content_wrap_button").attr("disabled","true");	    	

	    	}else{

	    		

	    		$("#comment_content_wrap_button").removeAttr("disabled");

	    		

	    	}

	    });

	    

	</script>
	

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

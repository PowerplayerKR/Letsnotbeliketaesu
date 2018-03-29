<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../letsnotbeliketaesu/css/reset.css">
<link rel="stylesheet" href="../letsnotbeliketaesu/css/notosanskr.css">
<link rel="stylesheet" href="../letsnotbeliketaesu/css/header.css">
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
	padding-top: 23%;
	
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
	width: 120px;
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
		margin: -150px 0 0 -300px;
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
		position: fixed;
		width: 100%;
		height: 100%;
		margin: 0;
		padding: 0;
		border: 0;
		z-index: 32;
		background-color: #000000;
		opacity: 0.3;
		display: none;
		top:0;

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
	#comment_content_wrap_star_grade_head_up{ 
	margin: 2px 0 0 106px;
	 }
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
    margin: -380px 0 0 -530px;
    text-decoration: none;
      color: #646464;
  }
  #saw{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -380px 0 0 -435px;
    text-decoration: none;
      color: #646464;
  }
  #interested{
    width: 110px;
    height: 30px;
    position: absolute;
    top: 50%;
    left: 52%;
    margin: -380px 0 0 -380px;
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
    margin: -362px 0 0 -353px;
  }
  .book_wrap {
  	position: absolute;
  	margin-top: -500px;
  }
  .myPageC{
  	color: aqua;
  }

</style>
</head>
<body>
<div class="report_reason">
		<form>
			<textarea class="report_txt" placeholder="여기에 사유를(을) 입력해주세요 "
				style="resize: none; width: 1000px; height: 100px;"></textarea>

			<input type="submit" class="report_submit">
		</form>
	</div>
 <jsp:include page="/template/header.jsp"></jsp:include>




	
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
						<h4 style="text-align: center; padding-top: 55px;">댓글 달려면 별점 클릭</h4>
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
				<div class="star_rating" style="text-align: center;">
							<i class="fa fa-star-o fa-2x"   aria-hidden="true"><div></div><div></div></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div></i>
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
							<div class="star_rating" data-isbn="${book.isbn}">
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
									
							<button class="wish_btn" id="ContentButton">
								<i class="fa fa-heart"></i>보고싶어요
							</button>
							
							<button class="comment_btn" id="ContentButton" data-img="${book.image}" data-title="${book.title}" data-comment="${book.content}">
								<i class="fa fa-comment"></i> 코멘트쓰기
							</button>
						</div> <img src="${book.image}" alt="${book.title}"/>
				</a></li>

			</c:forEach>
			
		</ul></div>
	</div>

<div id="userpage">
<a id="see" href="#">보고싶어요</a>
<a id="saw" onclick="location.href='mypage2.do'">봤어요</a>
<a id="interested" onclick="location.href='mypage3.do'">관심없어요</a>
<p id="songeunBar"></p>


</div>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="../letsnotbeliketaesu/js/default.js"></script>

<script>

function starSub(index,ht,arry){
	
	arry.each(function(){
		$(this).find('.true').removeClass('true');
		if(index>=0)$($($(this).children('i')[index]).children("div")[ht]).addClass('true');
		
		});
	
	$(arry).trigger('mouseleave');
}
$('#star_check').click(function() {
	$('#comment_content_wrap_star_grade_wrap').show();
	$('#comment_blind_wrap').show();
});
$(function(){$('.star_rating').trigger('mouseleave')});
$('.star_rating .head,.star_rating .tail').mouseenter(function(){
    var offset=$(this).offset(),
        active=$(this).hasClass('true'),
		score=$(this).parent().index()*2+$(this).index();
    $('#tool_tip').show().css({'top':offset.top+50,'left': offset.left-38})
		.find('p').css({color:active?'red':'black'})
		.text(active?'취소하기':(['최악 이에요','싫어요','재미 없어요','별로예요','부족 해요',
			'보통 이예요','볼만 해요','재미 있어요','훌륭 해요','최고예요!'])[score]);
    $(this).closest('.star_rating').children().removeClass('fa-star-o fa-star-half-o fa-star')
		.each(function(){var sub=score-$(this).index()*2;$(this).addClass(sub?sub<0?'fa-star-o':'fa-star':'fa-star-half-o')});
}).click(function() {
	var a=$(this).closest(".star_rating").find(".true");// 별점있는거  th는 내가 
	console.log("클릭 console"+a.hasClass('true'));
	if(a.length===1){
		if(!($(this).hasClass("true"))){
			$(this).addClass("true")
			console.log("실행되지마 제발!~!~!~!1");
		}
		a.removeClass("true");
		console.log(a);
	}else{
		$(this).addClass("true");
		console.log("실행되지마 제발!~!~!~!2");
	}

	var starPoint=$(this).index()?1:0.5;
	$.ajax({
		url : "starQuery.do",
		type : "post",// post방식
		data : {
			"isbn" : $(this).closest(".star_rating")
				.data('isbn'),
			"star_point" : $(this).closest('i').prevAll(
					'i').length +starPoint,
		},
		error : function(request, status, error) {
			alert("code:" + request.status + "\n"
					+ "message:" + request.responseText
					+ "\n" + "error:" + error);
		},
		success : function(json) {
			console.log(json);
		}
		
	});// $.ajax() end$('.star_rating"[data-i="+$(this).closest(".star_rating").data("isbn")+"]"')
	 if(!($(this).closest('.info_box').hasClass('.info_box'))){
		 var qqq=$(this);
		 var zzz= new Array();
			$('.star_rating').each(function () {
			    if ( $(this).data('isbn') === qqq.closest(".star_rating").data("isbn") ) {
			        // do whatever you wanted to do with it
			    	zzz.push($(this));
			    } 
			});
		if($(this).hasClass("true")){
		starSub($(this).closest('i').prevAll('i').length,$(this).index(),$(zzz));
		}else{
			starSub(-1,-1,$(zzz));
		}
	 }
});
$('.star_rating').mouseleave(function(){
	var $active=$(this).find('.true'),
		score=$active.length?$active.parent().index()*2+$active.index():-1;
	$('#tool_tip').hide();
    $(this).children().removeClass('fa-star-o fa-star-half-o fa-star')
        .each(function(){var sub=score-$(this).index()*2;$(this).addClass(sub?sub<0?'fa-star-o':'fa-star':'fa-star-half-o')});
});
$('.comment_btn').on("click", function(){
					var top = 150 - $(window).scrollTop();
					var scrollTop = $(window).scrollTop();
					// 스크롤 막기
					$(".book_wrap").attr("data-scroll", scrollTop);
					$(".new_book_wrap").attr("data-scroll", scrollTop);
					$('html, body').css({
						'overflow' : 'hidden',
						'height' : '100%'
					});
				
				
				
					$("#content").data("scrollTop",scrollTop);
					$('#element').on('scroll touchmove mousewheel',
							function(event) {
								event.preventDefault();
								event.stopPropagation();
								return false;
							});
					console.log($(this).closest('.book_list').find('img').attr(
							'alt'));
					console.log($(this).closest('.book_list').find('img').attr(
							'src'))
					$('#comment').show();
					$('#comment_title').text(
							$(this).closest('.book_list').find('img').attr(
									'alt'));
					$('#comment_content_wrap_img').attr(
							'src',
							$(this).closest('.book_list').find('img').attr(
									'src'));
					$('#body_blind_wrap').show();
					//,#comment_content_wrap .star_rating
					$('#comment_content_wrap_star_grade_body_star .star_rating,#comment_content_wrap .star_rating')
					.data('isbn',$(this).closest('.info_box').find('.star_rating').data('isbn'));
					var qqq=$(this);
					var zzz= new Array();
					$('.star_rating').each(function () {
					    if ( $(this).data('isbn') === qqq.closest(".info_box").find(".star_rating").data("isbn") ) {
					        // do whatever you wanted to do with it
					    	console.log("몇번 돌아감?");
					    	zzz.push($(this));
					    } 
					});
					var x = $(this).closest('.info_box').find('.true');
					if(x.hasClass('true')){
						starSub(x.closest('i').prevAll('i').length,x.index(),$(zzz));
					}
					else{
						starSub(-1,-1,$(zzz));
						$('#star_check').trigger('click');
					}
					
					
			$('#inputText').val($(this).data('comment'));
					$('#inputText').data('comment', $(this).data('comment'));
					if ($(this).data('comment') == "") {
						$('#comment_content_wrap_button').attr("disabled",
								"true");
					}
					
				});
$('#body_blind_wrap').click(
				function() {
					$('html, body').css({
						'overflow' : '',
						'height' : 'auto'
					});
					var scroll="";
				
					
					scroll = $(".new_book_wrap").attr("data-scroll");
					$(window).scrollTop(scroll);
					$(".book_wrap").attr("data-scroll", "");
					$(".new_book_wrap").attr("data-scroll", "");
					$('#element').off('scroll touchmove mousewheel');
					$('#comment').hide();
					$(".report_reason").hide();
					$(this).hide();

					$('#comment_content_wrap_star_grade_wrap').hide();

					$('#comment_blind_wrap').hide();

				});
$('#comment_blind_wrap').click(function() {
	$('#comment_content_wrap_star_grade_wrap').hide();
	$(this).hide();
});

$('#comment_head_end')
		.click(
				function() {
					$('#comment_content_wrap_star_grade_wrap').hide();
					$('#comment').hide();
					$('#body_blind_wrap').hide();
				});
$("#comment form")
		.on(
				"submit",
				function(event) {

					event.preventDefault();
					var beforeComment = $('#inputText').data('comment');
					var comment = $(this).find('[name=comment]').val();
					console.log(comment)
					if ($(
							'#comment_content_wrap_star_grade_body_star .star_rating')
							.find('.true').hasClass('true')) {
						if (comment.trim() == "" || beforeComment == comment) {
							alert("제데로 입력해주세요");
						} else {
							console.log(beforeComment);
							if (!beforeComment) {

								$
										.ajax({
											url : "reviewInsert.do",
											type : "post",// post방식
											dataType : "json",// json
											data : {
												"isbn" : $(
														'#comment_content_wrap_star_grade_body_star .star_rating')
														.data('isbn'),
												"content" : comment
											},
											error : function(request, status,
													error) {
												alert("code:" + request.status
														+ "\n" + "message:"
														+ request.responseText
														+ "\n" + "error:"
														+ error);
											},
											success : function(json) {
												console.log(json);
											}
										});// $.ajax() end
								$('.star_rating[data-isbn='+$(this).closest('.info_box').find(".star_rating").data("isbn")+']').closest('.info_box').find(
								'.comment_btn')
								.data('comment', comment);
								$('#inputText').data('comment', comment);
							} else {
								$
										.ajax({
											url : "reviewUpdate.do",
											type : "post",// post방식
											dataType : "json",// json
											data : {
												"isbn" : $(
														'#comment_content_wrap_star_grade_body_star .star_rating')
														.data('isbn'),
												"content" : comment
											},
											error : function(request, status,
													error) {
												alert("code:" + request.status
														+ "\n" + "message:"
														+ request.responseText
														+ "\n" + "error:"
														+ error);
											},
											success : function(json) {
												console.log(json);
											}
										});// $.ajax() end
								$('.star_rating[data-isbn='+$(this).closest('#comment_content_wrap').find(".star_rating").data("isbn")+']').closest('.info_box').find(
										'.comment_btn')
										.data('comment', comment);
								$('#inputText').data('comment', comment);
							}
						}
					} else {
						$('#star_check').trigger('click');
						console.log("실행되면안됨");
					}
				});
$("textarea").on('keydown keyup', function() {
	if ($(this).val().length > 2000 || $(this).val().length == 0) {
		$("#comment_content_wrap_button").attr("disabled", "true");
	} else {
		$("#comment_content_wrap_button").removeAttr("disabled");
	}
});




</script>





	

</body>
</html>

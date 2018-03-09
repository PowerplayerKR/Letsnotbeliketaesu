<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="../last_project/css/header.css">

<link rel="stylesheet" href="../last_project/css/reset.css">

<link rel="stylesheet" href="../last_project/css/notosanskr.css">

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<title>책 읽으실?</title>

<style>

textarea {
  resize: none;
}
body {
	font-family: 'Noto Sans KR', sans-serif;
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
.book_img{
	width: 220px;
	height: 314px;	
}
.book_wrap{
	width: 1250px;
	height: 100%;
	list-style: none;
	padding: 0;
	margin: auto;
	text-align: center;
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
		position:fixed;
		width: 100%;
		height: 100%;
		background: rgba(51,51,51,0.5);
		display: none;
		z-index: 4;
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

		#tool_tip {
		width:90px;
		height:30px;
		
		background: white;
		text-align: center;
		display: none;
		position: absolute;
		border: 1px solid black;
		z-index:99;

	}
	#tool_tip_head{
		margin: -22px 0 0 -9px;
		position: absolute;
	}
	.book_title{
		width: 100%;
		height: 18px;
		overflow: hidden;
	}
	#comment_content_wrap_star_grade_body_infotext{
		height: 68px;
    	overflow: hidden;
	}
</style>
</head>

<body>
<div id="tool_tip"><i class="fa fa-caret-up fa-2x" aria-hidden="true" id="tool_tip_head"></i><p style="text-align:center">보고 싶어요</p></div>
	<div id="body_blind_wrap"></div>
	
	
		<div id="comment">

	<div id="comment_head">
		<h3><h4>제목</h4> <i class="fa fa-angle-down fa-1x" id="star_check">
			<div id="comment_content_wrap_star_grade_wrap">
				<div id="comment_content_wrap_star_grade_head">

					<i class="fa fa-caret-up fa-2x" id="comment_content_wrap_star_grade_head_up"></i>

				</div>
				<div id="comment_content_wrap_star_grade_body">
					<div id="comment_content_wrap_star_grade_body_infotext">
						<h4  style="
    display:  block;
    margin: 19px 61px;
						">평가 해주세요</h4>
					</div>

					<div id="comment_content_wrap_star_grade_body_mid_text">
						<h5 style="
    margin: 22px 63px;
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
					<!--<h4 style="text-align: center;margin-bottom: 15px;margin-top: 17px;">댓글 달려면 별점 클릭</h4>-->

					</div>




					<div class="book_emotion_wrap">
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
		<%@ include file="/template/header.jsp"%>
		<div id="content">
		<ul class="book_wrap">
			<c:forEach var="book" items="${searchBookList}">
				<li class="scrolling" data-num="${book.ROWNUM}">
					<div class="info_box">
							<h3 class="book_title">${book.title}</h3>
							<div class="star_rating" id="${book.num}">
								<i class="fa fa-star-o fa-2x" aria-hidden="true">
									<div class="head <c:if test="${book.star_point eq 0.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 1}">true</c:if>"></div>
								</i> 
								
								<i class="fa fa-star-o fa-2x"
									aria-hidden="true"><div class="head  <c:if test="${book.star_point eq 1.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 2}">true</c:if>"></div></i> <i class="fa fa-star-o fa-2x"
									aria-hidden="true"><div class="head <c:if test="${book.star_point eq 2.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 3}">true</c:if>"></div></i> <i class="fa fa-star-o fa-2x"
									aria-hidden="true "><div class="head <c:if test="${book.star_point eq 3.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 4}">true</c:if>"></div></i> <i class="fa fa-star-o fa-2x"
									aria-hidden="true"><div class="head <c:if test="${book.star_point eq 4.5}">true</c:if>"></div>
									<div class="tail <c:if test="${book.star_point eq 5}">true</c:if>"></div></i>
							</div>
							<button class="wish_btn" >
								<i class="fa fa-heart"></i>보고싶어요
							</button>
							<button class="comment_btn" data-img="${book.image}" data-title="${book.title}" data-comment="${book.content}">
								<i class="fa fa-comment"></i> 코멘트쓰기
							</button>
						</div> <img class="book_img" src="${book.image}" alt="${book.title}"/>
				</li>

			</c:forEach>
		</ul></div>
	</div>
	<input type="hidden" class="searchOption" name="searchOption" value="${param.searchOption}">
	<input type="hidden" class="keyword" name="keyword" value="${param.keyword}">
	 <script src="../last_project/js/jquery.js"></script>
 	<script src="../last_project/js/jquery-ui.min.js"></script>
	<script>
	var lastScrollTop = 0;
	// 1. 스크롤 이벤트 발생
	$(window).scroll(function(){ // ① 스크롤 이벤트 최초 발생
	    var currentScrollTop = $(window).scrollTop();
	    if( currentScrollTop - lastScrollTop > 0 ){
	        console.log("down-scroll");
	        // 2. 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
	        if ($(window).scrollTop() >= ($(document).height() - $(window).height()) ){ //② 현재스크롤의 위치가 화면의 보이는 위치보다 크다면
	            // 3. class가 scrolling인 것의 요소 중 마지막인 요소를 선택한 다음 그것의 data-bno속성 값을 받아온다.
	            //      즉, 현재 뿌려진 게시글의 마지막 bno값을 읽어오는 것이다.( 이 다음의 게시글들을 가져오기 위해 필요한 데이터이다.)
	            var lastNum = $(".scrolling:last").attr("data-num");
	        	var searchOption = $(".searchOption").val();
	        	var keyword = $(".keyword").val();
	            // 4. ajax를 이용하여 현재 뿌려진 게시글의 마지막 bno를 서버로 보내어 그 다음 20개의 게시물 데이터를 받아온다.
	            $.ajax({
	                type : 'post',  // 요청 method 방식
	                url : 'bookSearchMore.do',
	                dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
	                data : {"num":lastNum,"searchOption":searchOption,"keyword":keyword},
	                success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
	                    // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
	                    if(data != ""){
	                        //6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
	                        $(data).each(
	                            // 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
	                            function(){
	                                
	                              	var li = $("<li class='scrolling' data-num='"+this.ROWNUM+"'>");
	                                
	                              	var info_box = $("<div class='info_box'>");
	                              	
	                              	var book_title = $("<h3 class='book_title'>").text(this.title);
	                                
	                              	var star_rating = $("<div class='star_rating' id='"+this.num+"'>");
	                              	
	                              	var star_icon1 = $("<i class='fa fa-star-o fa-2x' aria-hidden='true'>");
	                              	var star_icon2 = $("<i class='fa fa-star-o fa-2x' aria-hidden='true'>");
	                              	var star_icon3 = $("<i class='fa fa-star-o fa-2x' aria-hidden='true'>");
	                              	var star_icon4 = $("<i class='fa fa-star-o fa-2x' aria-hidden='true'>");
	                              	var star_icon5 = $("<i class='fa fa-star-o fa-2x' aria-hidden='true'>");
	                              	
	                              	var head1;
	                              	var tail1;
	                            	var head2;
	                              	var tail2;
	                            	var head3;
	                              	var tail3;
	                            	var head4;
	                              	var tail4;
	                            	var head5;
	                              	var tail5;
	                              	
	                              	var wish_btn = $("<button class='wish_btn'>");
	                              	var heart_icon = $("<i class='fa fa-heart'>");
	                              	
	                            	var comment_btn = $("<button class='comment_btn'>").attr("data-title",this.title);
	                              	var comment_icon = $("<i class='fa fa-comment'>");
	                              	
	                              	var book_img = $("<img class='book_img' src='"+this.image+"' alt='"+this.title+"'>");
	                              	
	                              	if(this.star_point == 0.5){
	                              		head1 = $("<div class='head true'>");
	                              	}else{
	                              		head1 = $("<div class='head '>");
	                              	}
	                              
	                            	if(this.star_point == 1){
	                              		tail1 = $("<div class='tail true'>");
	                            	}else{
	                            		tail1 = $("<div class='tail '>");
	                            	}
	                              	
	                            	if(this.star_point == 1.5){
	                              		head2 = $("<div class='head true'>");
	                              	}else{
	                              		head2 = $("<div class='head '>");
	                              	}
	                              
	                            	if(this.star_point == 2){
	                              		tail2 = $("<div class='tail true'>");
	                            	}else{
	                            		tail2 = $("<div class='tail '>");
	                            	}
	                               
	                            	if(this.star_point == 2.5){
	                              		head3 = $("<div class='head true'>");
	                              	}else{
	                              		head3 = $("<div class='head '>");
	                              	}
	                  
	                            	if(this.star_point == 3){
	                              		tail3 = $("<div class='tail true'>");
	                            	}else{
	                            		tail3 = $("<div class='tail '>");
	                            	}
	                            	
	                            	if(this.star_point == 3.5){
	                              		head4 = $("<div class='head true'>");
	                              	}else{
	                              		head4 = $("<div class='head '>");
	                              	}
	                              
	                            	if(this.star_point == 4){
	                              		tail4 = $("<div class='tail true'>");
	                            	}else{
	                            		tail4 = $("<div class='tail '>");
	                            	}
	                            	
	                            	if(this.star_point == 4.5){
	                              		head5 = $("<div class='head true'>");
	                              	}else{
	                              		head5 = $("<div class='head '>");
	                              	}
	                              
	                            	if(this.star_point == 5){
	                              		tail5 = $("<div class='tail true'>");
	                            	}else{
	                            		tail5 = $("<div class='tail '>");
	                            	}
	                            	wish_btn.append(heart_icon,"보고싶어요");
	                              	comment_btn.append(comment_icon,"코멘트쓰기");
	                              	
	                              	star_icon1.append(head1,tail1);
	                              	star_icon2.append(head2,tail2);
	                              	star_icon3.append(head3,tail3);
	                              	star_icon4.append(head4,tail4);
	                              	star_icon5.append(head5,tail5);
	                              	
	                              	star_rating.append(	star_icon1,star_icon2,star_icon3,star_icon4,star_icon5);
	                              	
	                              	info_box.append(book_title,star_rating,wish_btn,comment_btn);
	                              	
	                              	li.append(info_box,book_img);
	                              	$(".book_wrap").append(li);   
	                        });// each
	                    }// if : data!=null
	                }// success
	            });// ajax
	        }//if : 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
	        // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
	        lastScrollTop = currentScrollTop;
	    }// 다운스크롤인 상태
	});//스크롤 기능

	$(document).ready(function () {
			$('.star_rating').trigger('mouseleave');
	
	    });

		$(".star_rating  i .tail").mouseenter(

				function(event) {

					

					

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

		

		$(document).on("mouseenter",".star_rating i .head",function(event) {
				

					$(this).closest("i").parent().children("i").removeClass(

							"fa fa-star 2x").removeClass("fa fa-star-o fa-2x")

							.removeClass("fa fa-star-half-o fa-2x");

					$(this).closest("i").addClass("fa fa-star-half-o fa-2x")

							.prevAll("i").addClass("fa fa-star fa-2x");

					$(this).closest("i").nextAll("i").addClass(

							"fa fa-star-o fa-2x");

 

					return false;

				});

 
		$(document).on("mouseleave",".star_rating",function(event) {
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

						var result = confirm('확인을 누르실경우 댓글까지 함께 삭제됩니다.')

 

					if(result){

						$.ajax({

							url:"starDelete.do",

							type:"post",//post방식

							dataType:"json",//json

							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"email":"bong"},

								

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

								data:{"book_num":$(this).closest(".star_rating").attr('id'),"review_writer":"bong"},

									

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

							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"email":"bong","starPoint":$(this).closest('i').prevAll('i').length+0.5},

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

							data:{"starPoint":$(this).closest('i').prevAll('i').length+0.5,"bookNum":$(this).closest(".star_rating").attr('id'),"reviewNum":0,"email":"bong"},

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

							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"email":"bong"},

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

								data:{"book_num":$(this).closest(".star_rating").attr('id'),"review_writer":"bong"},

									

								error:function(request,status,error){

									alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

 

								

								},

								success:function(json) {

									console.log(json);

								}

							});//$.ajax() end

							

						}

						

						$(this).closest('.star_rating').find('.true').removeClass('true')

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

							data:{"bookNum":$(this).closest(".star_rating").attr('id'),"email":"bong","starPoint":$(this).closest('i').prevAll('i').length+1},

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

							data:{"starPoint":$(this).closest('i').prevAll('i').length+1,"bookNum":$(this).closest(".star_rating").attr('id'),"email":"bong",

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

		$(document).on("click", ".comment_btn", function () {
			var top = 120 - $(window).scrollTop();
			var scrollTop = $(window).scrollTop();
			
			//스크롤 막기
			$(".book_wrap").attr("data-scroll",scrollTop);
			$('html, body').css({'overflow': 'hidden', 'height': '100%'});
			$('#content').css('margin-top',top+'px');
			$('#element').on('scroll touchmove mousewheel', function(event) {
				event.preventDefault();
			  	event.stopPropagation();
			  	return false;
			});
			
			$("#comment_head h4").text($(this).data("title"));
			$("#comment_content_wrap_img").attr("src",$(this).data("img"));
			
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
	        	}else{
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
	    	$('html, body').css({'overflow': '', 'height': 'auto'});
	    	$('#content').css('margin-top','120px');
	    	var scroll = $(".book_wrap").attr("data-scroll");
	    	$(window).scrollTop(scroll);
	    	$(".book_wrap").attr("data-scroll","");
	    	$('#element').off('scroll touchmove mousewheel');
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
		
		$('#comment_head_end').click(function () {
			$('html, body').css({'overflow': '', 'height': 'auto'});
	    	$('#content').css('margin-top','120px');
	    	var scroll = $(".book_wrap").attr("data-scroll");
	    	$(window).scrollTop(scroll);
	    	$(".book_wrap").attr("data-scroll","");
	    	$('#element').off('scroll touchmove mousewheel');
			$('#comment_content_wrap_star_grade_wrap').hide();
			$('#comment').hide();
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

					data:{"book_num":$('#comment_content_wrap_star_grade_body_star .star_rating').attr('id'),"content":comment,

						  "review_writer":"bong"

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

   							data:{"book_num":$('#comment_content_wrap_star_grade_body_star .star_rating').attr('id'),"content":comment,

   								  "review_writer":"bong"

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

</body>

</html>
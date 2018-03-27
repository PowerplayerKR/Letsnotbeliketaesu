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

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<title>책 읽으실?</title>

<style>

textarea {
  resize: none;
}
body {
	background: #E5E5E5;
	font-family: 'Noto Sans KR', sans-serif;
}

.screen_out {
	width: 0;
	height: 0;
	line-height: 0;
	text-indent: -9999px;
	overflow: hidden;
	display: block
	position: absolute;
}
.book_wrap{
	width: 1400px;
	height: 100%;
	list-style: none;
	padding: 0;
	margin: auto;
	text-align: center;
	top: 150px;
	position: relative;
}

.book_wrap li {
	width: 220px;
	height: 314px;
	display: block;
	margin: 15px;
	float:left;
	position: relative;
	overflow: hidden;
}

.book_wrap a {
	text-decoration: none;
	color: #424242;
}

	#content {
		margin: auto;
		width: 1250px;
		position: relative;
	}

 	.info_box {
		width: 220px;
		height: 157px;
		position: absolute;
		top: 157px;
		left: 0;
		background: #fff;
		transform: translateY(340px);
		transition: .3s ease;
		text-align: center;
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
#header{
	top:0px;
}

.wish_btn {
	left: 0px;
}

.comment_btn {
	right: 0px;
}

.wish_btn:hover {
	color: hotpink;
}

.comment_btn:hover {
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
	.book_info_table {
		position: absolute;
	    top: 150px;
	    left: 550px;
	    background: rgb(250, 248, 248);
	    width: 800px;
	    display: none;
	    z-index: 11;
	}
	
	.book_info_table_wrap {
		position: relative;
		width: 800px;
		height: 314px;
		border-bottom: 1px solid #d5d5d5;
		background-color: white;
	}
	.info{
		width:500px;
		position:absolute;	
		left:220px;
		top:20px;
	    margin: 0;
    	padding: 0;
    	border: 0;
    	font: inherit;
    	font-size: 100%;
    	vertical-align: baseline;
    	border-bottom: 1px solid #ded6c7;
    }
    .title{
		font-weight: bold;
    	font-size: 20px;
    	line-height: 35px;
    	width: 430px;
    	color: #333333;
    	margin-bottom: 5px;
    	display: inline-block;
    	white-space: nowrap;
   	 	overflow: hidden;
    	text-overflow: ellipsis;
    	text-decoration: none;
	}
	.book_writer{
		position: absolute;
		left:230px;
		top:80px;
	}
	 .book_intro_start{	
    	font-size: 14px;
    	font-weight: bold;
    	color: #555555;
    	margin-top: 20px;
    	margin-left: 20px;
    	margin-bottom: 20px;
    }
    .book_intro{
    	margin-left: 20px;
    }
     .book_review_start{
    	margin-top: 20px;
    	margin-left: 20px;
    	font-size: 14px;
    	font-weight: bold;
    	color: #555555;
    }
    .review_balloon {
	    display: inline-block;
	    position: relative;
	    background: #FFFFFF;
	    height: 125px;
	    width: 487px;
	    margin: 0 auto 10px;
	    border-radius: 10px;
	    margin-left:30px;
	    margin-top:20px;
	    border: 1px solid #eeeeee;
	}
	.review_balloon:after {
	    content: "";
	    position: absolute;
	    height: 50px;
	    width: 50px;
	    border-radius: 25px;
	    z-index: -2;
	    background: #fff;
	    bottom: 80px;
	    left: -20px;
	    border: 1px solid #eeeeee;
	}
	.review_balloon:before {
	    content: "";
	    position: absolute;
	    height: 100px;
	    width: 100px;
	    border-radius: 50px;
	    z-index: -1;
	    background: #FAF8F5;
	    bottom: 90px;
	    left: -30px; 
	}
	.review_box{
		margin-top: 10px;
		margin-left: 30px;
	}
	.content_wrap{
		width:300px;
		height:50px;
		margin-top: 10px;
	    line-height: 20px;
	    color: #555555;
	    font-size: 14px;
	    white-space: pre-wrap;
	    margin-left: 20px;
	    overflow: hidden;
	}
	.review_writer{
		font-size: 14px;
		margin-left: 20px;
		margin-top: 5px;
	}
	.review_update_date{
		display:block;
		color: #aaaaaa;
    	font-size: 12px;
    	position: absolute;
    	bottom: 20px;
    	left: 20px;
	}
	.cover{
		width:200px;
		height:250px;
		position: absolute;
		top: 15px;
		left: 20px;
	}
	.review_more{
		color: #777777;
	    font-size: 12px;
	    font-weight: bold;
	    height: 40px;
	    line-height: 40px;
	    background-color: #fff;
	    border: 1px solid #e8e4dc;
	    text-align: center;
	    -moz-border-radius: 3px;
	    -webkit-border-radius: 3px;
	    border-radius: 3px;
	    margin-top: 20px;
	    cursor: pointer;
	}
	.screen {
		position: fixed;
	    width: 10000px;
	    height: 10000px;
	    background: rgba(51, 51, 51, 0.5);
	    display: none;
	    z-index: 4;
	}
	.user_img{
		display: inline-block;
	    position: relative;
		-moz-border-radius: 50%;
	    -webkit-border-radius: 50%;
	    border-radius: 50%;
	    border: 1px solid #d4d8d9;
	    width: 52px;
	    height: 52px;
	    top: -27px;
	}
	.content_wrap{
		width:300px;
		height:50px;
		margin-top: 10px;
	    line-height: 20px;
	    color: #555555;
	    font-size: 14px;
	    white-space: pre-wrap;
	    margin-left: 20px;
	    overflow: hidden;
	}
	.review_writer{
		font-size: 14px;
		margin-left: 20px;
		margin-top: 5px;
	}
	.review_update_date{
		display:block;
		color: #aaaaaa;
    	font-size: 12px;
    	position: absolute;
    	bottom: 20px;
    	left: 20px; 
	}
	.book_img_wrap{
	    position: relative;
	    cursor: pointer;
	    border: 1px solid black; 
	}
	.book_img{
        width: 220px;
        height: 314px;
        display:inline-block;
        background-size: cover;
        background-repeat: no-repeat;
        position: relative;
        overflow: hidden;
    }
    .info_wrap{
		position: relative;
	}
	#wrap{
		top:0px;
	}
	.loader {
		position: fixed;
		top:0;
		left:0;
	    width: 10000px; 
	    height: 10000px;
	    background: rgba(51, 51, 51, 0.5);
	    display: none;
	    z-index: 20;
	}
	.loader_img{
		width: 400px;
		height: 400px;
		position: fixed;
		top: 50%;
		left: 50%;
		margin-left: -200px;
		margin-top: -200px;
	}
	.book_info_ul{
		margin-bottom: 50px;
	}
	.wish_btn {
            left: 0px;
        }
        .comment_btn {
            right: 0px;
        }
        .wish_btn:hover {

            color: hotpink;

        }
        .comment_btn:hover {

            color: #4DB6AC;

        }
        .wish_btn,.comment_btn {
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
        .details_book_img_wrap{
        	position: relative;
            width: 220px;
            cursor: pointer;
        }
        .details_title{
        	position: relative;
    		left: 10px;
        }
        
        
        
	.info{
		width:500px;
		position:absolute;	
		left:220px;
		top:20px;
	    margin: 0;
    	padding: 0;
    	border: 0;
    	font: inherit;
    	font-size: 100%;
    	vertical-align: baseline;
    	border-bottom: 1px solid #ded6c7;
	}	
	.info_wrap:hover .book_img::before {
		content: "";
		width: 220px;
		height: 314px;
		position: absolute;
		display: block;
		transition: .5s ease;
		background: rgba(0, 0, 0, .7)
	}
	
    .details_info_wrap:hover .book_img::before {
		content: "";
		width: 220px;
		height: 314px;
		position: absolute;
		display: block;
		transition: .5s ease;
		background: rgba(0, 0, 0, .7)
	}
	.details_info_wrap{
		 position: relative;
		 width: 220px;
		 overflow: hidden;
	}
	.book_img_wrap,.details_book_img_wrap:hover .book_img::before {
		content: "";
		width: 220px;
		height: 314px;
		position: absolute;
		display: block;
		transition: .5s ease;
		background: rgba(0, 0, 0, .7)
	}
	.book_img_wrap, .details_book_img_wrap,:hover+.info_box{	
    	transform: translateY(0px);
	}
	.info_box:hover {
		transform: translateY(0px);
	}
</style>
</head>

<body>
<div class="loader">
	<img class="loader_img" src="../letsnotbeliketaesu/img/ajax_loader6.gif">
</div>
<div class="screen"></div>
	<div class="book_info_table">
        <div class="book_info_table_wrap">
            <div class="info">
                <div class="details_title">제목</div>
            </div>
            <div class="book_writer">작가</div>
            <div class="details_info_wrap">
                <div class="details_book_img_wrap">
                    <div class="book_img"></div>
                </div>
                <div class="info_box">
                    <div class="book_title">
                        <h3>책 제목</h3>
                    </div>
                   <div class="star_rating" data-isbn="">
						<i class="fa fa-star-o fa-2x" aria-hidden="true"><div
								class="head <c:if test="${book.star_point eq 0.5}">true</c:if>"></div>
							<div
								class="tail <c:if test="${book.star_point eq 1}">true</c:if>"></div></i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true"><div
								class="head  <c:if test="${book.star_point eq 1.5}">true</c:if>"></div>
							<div
								class="tail <c:if test="${book.star_point eq 2}">true</c:if>"></div></i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true"><div
								class="head <c:if test="${book.star_point eq 2.5}">true</c:if>"></div>
							<div
								class="tail <c:if test="${book.star_point eq 3}">true</c:if>"></div></i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true "><div
								class="head <c:if test="${book.star_point eq 3.5}">true</c:if>"></div>
							<div
								class="tail <c:if test="${book.star_point eq 4}">true</c:if>"></div></i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true"><div
								class="head <c:if test="${book.star_point eq 4.5}">true</c:if>"></div>
							<div
								class="tail <c:if test="${book.star_point eq 5}">true</c:if>"></div></i>
					</div>
                    <button class="wish_btn">
                        <i class="fa fa-heart"></i>보고싶어요
                    </button>
                    <button class="comment_btn">
                        <i class="fa fa-comment"></i> 코멘트쓰기
                    </button>
                </div>
            </div>
        </div>

        <div class="book_intro_start">줄거리</div>
        <div class="book_intro">내용</div>
        <div class="book_review_start">코멘트</div>
		<ul class="book_info_ul">
			<li class="book_info_li" data-isbn></li>
		</ul>
		<div class="review_more" style="display: block;">더보기</div>
	</div>
	
<div id="tool_tip"><i class="fa fa-caret-up fa-2x" aria-hidden="true" id="tool_tip_head"></i><p style="text-align:center">보고 싶어요</p></div>
	<div id="body_blind_wrap"></div>
	

		<div id="comment">

	<div id="comment_head">
		<h3><span id="comment_title"></span> <i class="fa fa-angle-down fa-1x" id="star_check">
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
			<div  class="star_rating" style="text-align: center;">
				<i   aria-hidden="true"><div></div><div></div></i>
				<i   aria-hidden="true"><div></div><div></div></i>
				<i   aria-hidden="true"><div></div><div></div></i>
				<i   aria-hidden="true"><div></div><div></div></i>
				<i   aria-hidden="true"><div></div><div></div></i>
			</div>
			<form>
		<textarea placeholder="여기에 댓글을 입력해주세요 " id="inputText" name="comment"></textarea>

		<input type="submit" id="comment_content_wrap_button">
			</form>

		</div>
	</div>
	
	
	<div id="wrap">
		<jsp:include page="/template/header.jsp"></jsp:include>
		<div id="content">
			<div id="searched_movies_title" class="container_12">
  				입력하신 <span id="search_query">${param.keyword}</span> 의 검색 결과입니다.  <span class="count"></span>
			</div>
			<ul class="book_wrap" >
				<c:forEach var="book" items="${searchBookList}">
					<li class="book_list" data-title="${book.title}" data-isbn="${book.isbn}" data-num="${book.ROWNUM}">
						<div class="info_wrap" data-title="${book.title}" data-isbn="${book.isbn}" >
							<div class="book_img_wrap" onclick="bookClick('${book.title}','${book.isbn}');">
				 				<div style="background-image: url('${book.image}');" class="book_img"></div>
			     			</div>
							<div class="info_box">
									<h3 class="book_title">${book.title}</h3>
									<div class="star_rating"  data-isbn="${book.isbn}">
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
									<button class="comment_btn" onclick="commentBtnClick();" data-img="${book.image}" data-title="${book.title}" data-comment="${book.content}">
										<i class="fa fa-comment"></i> 코멘트쓰기
									</button>
								</div>
							</div> 
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
	<input type="hidden" class="searchOption" name="searchOption" value="${param.searchOption}">
	<input type="hidden" class="keyword" name="keyword" value="${param.keyword}">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../letsnotbeliketaesu/js/default.js"></script>
 	<script src="../letsnotbeliketaesu/js/jquery-ui.min.js"></script>
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
	            var lastNum = $(".book_list:last").attr("data-num");
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
	                                
	                              	var li = $("<li class='book_list' data-num='"+this.ROWNUM+"'>");
	                                
	                              	var info_box = $("<div class='info_box'>");
	                              	
	                              	var book_title = $("<h3 class='book_title'>").text(this.title);
	                                
	                              	var star_rating = $("<div class='star_rating' data-isbn='"+this.isbn+"'>");
	                              	
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
	                              	
	                            	var comment_btn = $("<button class='comment_btn' onclick='commentBtnClick();'>").attr("data-title",this.title);
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
	                              	
	                              	 var book_info_wrap = $("<div class='book_info_wrap' data-num='"+this.num+"'>");
		                                
		                                
		                             var book_img = $("<div class='book_img' style=\"background-image: url('"+this.image+"');\">");
		                                
	                                var book_img_wrap = $("<div class='book_img_wrap' onclick=\"bookClick('"+this.title+"','"+this.isbn+"');\" data-isbn='"+this.isbn+"' data-title='"+this.title+"'>").append(book_img);
	                                
	                                var book_info = $("<div class='book_info'>");
	                                
	                                var book_title_link = $("<a class='book_title_link'>").text(this.title);
	                                var book_title = $("<h5 class='book_title_info'>");

	                                var book_publisher = $("<div class='book_publisher'>");
	                                var span_publisher = $("<span>").text("출판사 : "+this.publisher);
	                                
	                                var detail_info = $("<div class='detail-info'>");
	                                var book_introduce = $("<div class='book_introduce'>").text(this.introduce);
	                                var book_writer = $("<div class='writer'>").text("작가 : ");
	                                var span_writer = $("<span>").text(this.book_writer);
	                                var pub_date = $("<div class='pub_date'>").text(this.public_date);
	                                
	                                var title = book_title.append(book_title_link);
	                                
	                                var publisher = book_publisher.append(span_publisher);
	                                
	                                var writer = book_writer.append(span_writer);
	                                
	                                var detail =  detail_info.append(book_introduce,writer,pub_date);
	                                
	                                var info = book_info.append(book_title,publisher,detail);
									
	                                var book_img_wrap = $("<div class='book_img_wrap' onclick=\"bookClick('"+this.title+"','"+this.isbn+"');\" data-isbn='"+this.isbn+"' data-title='"+this.title+"'>").append(book_img);
	                                
	                                var info_wrap = $("<div class='info_wrap' data-title='"+this.title+"' data-isbn='"+this.isbn+"'>").append(book_img_wrap,info_box);

	                              	li.append(info_wrap);
	                              	$(".book_wrap").append(li);  
	                              	star_rating.trigger('mouseleave');
	                        });// each
	                    }// if : data!=null
	                }// success
	            });// ajax
	        }//if : 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
	        // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
	        lastScrollTop = currentScrollTop;
	    }// 다운스크롤인 상태
	});//스크롤 기능
	
	function bookClick(title,isbn) {
		$(".loader").show();
		var scrollTop = $(window).scrollTop();
		var top = 167 - $(window).scrollTop();
		$("details_info_wrap .star_rating").data("isbn");
		$(".book_wrap").data("scrollTop",scrollTop);
		$(".book_wrap").css({"position":"fixed","left":"326.5px","top":top+"px"});
		function getBook() {
			$.ajax({
				url:"getBook.do",
				type:"post",//post방식
				dataType:"json",//json
				data:{"title":title},//넘어가는 파라미터
				error:function(){
					alert("에러!!");
				},
				success:function(json) {
					$(json).each(function() {
					var title = $('.details_title');
					var bookWriter = $('.book_writer');
					var book_intro = $('.book_intro');
					var img = $('.details_book_img_wrap .book_img');
					var book_title = $(".book_info_table_wrap .book_title h3");
					title.text(this.title);
					book_title.text(this.title);
					bookWriter.text(this.book_writer);
					img.css({'background-image':"url("+this.image+")"});
					book_intro.text(this.introduce);
					});//each() end
					setTimeout(screenHide, 500);
				}
			});//$.ajax() end
		}//getBook() end	
			
		function getReview() {
			$.ajax({
				url:"getReview.do",
				type:"post",//post방식
				dataType:"json",//json
				data:{"isbn":isbn},//넘어가는 파라미터
				error:function(){
					alert("에러!!");
				},
				success:function(json) {
					var Cnum = 0; 
					$(json).each(function() {
						var review_box = $("<div class='review_box' data-num='"+this.ROWNUM+"'>");
						var review_balloon = $("<div class='review_balloon'>");
						var review_writer = $("<div class='review_writer'>").text(this.review_writer);
						var content = $("<div class='content_wrap'>").text(this.content);
						var review_update_date = $("<p class='review_update_date'>").text(this.regdate);
						var user_img = $("<img class='user_img' src='../last_project/img/user.jpg'>");
						var report = $("<button onclick='report($(this));' data-email='"+this.review_email+"' data-num='"+this.num+"'>신고하기</button>");
						review_balloon.append(review_writer,content,review_update_date);
						review_box.append(user_img,review_balloon,report);
						$(".book_info_li").append(review_box);
						Cnum= this.ROWNUM;
						
					});//each() end
					$(".book_info_li").attr("data-isbn",isbn);
					$.ajax({
						url:"getCountReview.do",
						type:"post",//post방식
						dataType:"json",//json
						data:{"isbn":isbn},//넘어가는 파라미터
						error:function(){
							alert("에러!!");
						},
						success:function(json) {	
							$(json).each(function() {
								$(".book_review_start").text("코멘트 ("+this.num+")");
								if(this.num==Cnum || this.num==0){
									$(".review_more").hide();
								}
								if(this.num==0){
									$(".book_info_table").css("height","700px");
								}
							});//each() end
						}//success end
					});//$.ajax() end
				}//success end
			});//$.ajax() end
		}//getReview() end
		
		getReview();
		getBook();
		function screenHide() {
				$(".loader").hide();
				$('.book_info_table').show();
				$('.screen').show();	
		}
	}//bookClick() end
	
	
	$(".review_more").click(function() {
		var lastNum = $(".review_box:last").attr("data-num");
		var isbn = $(".book_info_li").attr("data-isbn");
		$.ajax({
			url:"getReviewMore.do",
			type:"post",//post방식
			dataType:"json",//json
			data:{"num":lastNum,"isbn":isbn},
			error:function(){
				alert("에러!!");
			},
			success:function(json) {
				var Cnum = 0; 
				$(json).each(function() {
					var review_box = $("<div class='review_box' data-num='"+this.ROWNUM+"'>");
					var review_balloon = $("<div class='review_balloon'>");
					var review_writer = $("<div class='review_writer'>").text(this.review_writer);
					var content = $("<div class='content_wrap'>").text(this.content);
					var review_update_date = $("<p class='review_update_date'>").text(this.regdate);
					var user_img = $("<img class='user_img' src='../last_project/img/user.jpg'>");
					
					review_balloon.append(review_writer,content,review_update_date);
					review_box.append(user_img,review_balloon);
					$(".book_info_li").append(review_box);
					Cnum= this.ROWNUM;
				});//each() end
				
				$.ajax({
					url:"getCountReview.do",
					type:"post",//post방식
					dataType:"json",//json
					data:{"isbn":isbn},//넘어가는 파라미터
					error:function(){
						alert("에러!!");
					},
					success:function(json) {
						$(json).each(function() {
							$(".book_review_start").text("코멘트 ("+this.num+")");
							if(this.num==Cnum){
								$(".review_more").hide();
							}
						});//each() end
					}
				});//$.ajax() end
			}
		});//ajax end
		
	});//click() end
	
	$('.screen').click(function() {
		$(".book_wrap").css({"position":"relative","left":"","top":"150px"});
		var scroll = $(".book_wrap").data("scrollTop");
		$(window).scrollTop(scroll);
		$(".book_wrap").data("scroll","");
		$('.book_info_table').hide();
		$('.screen').hide();
		$('.book_info_li').empty();
		$(".review_more").show();
		$(".book_info_table").css("height","");
		var title = $('.title');	
		var bookWriter = $('.book_writer');
		var cover = $('.cover');
		title.text('');
		bookWriter.text('');
		cover.attr('alt','');
		cover.attr('src','');
		$(".book_info_li").attr("data-isbn","");
	});
	function commentBtnClick() {
		var top = 150 - $(window).scrollTop();
		var scrollTop = $(window).scrollTop();
		// 스크롤 막기
		$(".book_wrap").attr("data-scroll", scrollTop);
		$('html, body').css({
			'overflow' : 'hidden',
			'height' : '100%'
		});
		$(".book_wrap").css({"position":"fixed","left":"326.5px","top":top+"px"});;
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
		var x = $(this).closest('.info_box').find('.true');
		$('#comment_content_wrap_star_grade_body_star .star_rating')
				.attr(
						'id',
						$(this).closest('.info_box').find(
								'.star_rating').attr('id'));
		$(this).closest('.info_box').find('.star_rating')
				.removeAttr('id').attr('id', "fake");
		$('#comment_content_wrap_star_rating').children('i')
				.removeClass("fa fa-star fa-1x").removeClass(
						"fa fa-star-o fa-1x").removeClass(
						"fa fa-star-half-o fa-1x");
		$('#inputText').val($(this).data('comment'));
		$('#inputText').data('comment', $(this).data('comment'));
		if ($(this).data('comment') == "") {
			$('#comment_content_wrap_button').attr("disabled",
					"true");
		}
		if (x.hasClass('true') == true) {
			if (x.hasClass('head') == true) {
				$(
						$(
								'#comment_content_wrap_star_grade_body_star .star_rating')
								.children('i')[x.closest('i')
								.prevAll('i').length])
						.find('.head').addClass('true');
				$(
						$('#comment_content_wrap_star_rating')
								.children('i')[x.closest('i')
								.prevAll('i').length]).addClass(
						"fa fa-star-half-o fa-1x").prevAll("i")
						.addClass("fa fa-star fa-1x");
				$(
						$('#comment_content_wrap_star_rating')
								.children('i')[x.closest('i')
								.prevAll('i').length]).nextAll("i")
						.addClass("fa fa-star-o fa-1x");
			} else {
				$(
						$('#comment_content_wrap_star_rating')
								.children('i')[x.closest('i')
								.prevAll('i').length]).addClass(
						"fa fa-star fa-1x").prevAll("i").addClass(
						"fa fa-star fa-1x");
				$(
						$('#comment_content_wrap_star_rating')
								.children('i')[x.closest('i')
								.prevAll('i').length]).nextAll("i")
						.addClass("fa fa-star-o fa-1x");
				$(
						$(
								'#comment_content_wrap_star_grade_body_star .star_rating')
								.children('i')[x.closest('i')
								.prevAll('i').length])
						.find('.tail').addClass('true')
			}
			$(
					'#comment_content_wrap_star_grade_body_star .star_rating')
					.trigger('mouseleave');
		} else {
			$('#star_check').trigger('click');
		}
}
$('#body_blind_wrap').click(
		function() {
			$('html, body').css({
				'overflow' : '',
				'height' : 'auto'
			});
			var scroll="";
			$(".book_wrap").css({"position":"relative","left":"","top":"150px"});;
			scroll = $(".book_wrap").attr("data-scroll");
			$(window).scrollTop(scroll);
			$(".book_wrap").attr("data-scroll", "");
			$('#element').off('scroll touchmove mousewheel');
			$('#comment').hide();
			$(".report_reason").hide();
			$(this).hide();
	
			$('#comment_content_wrap_star_grade_wrap').hide();
	
			$('#comment_blind_wrap').hide();
	
			$('#comment_content_wrap_star_grade_body_star .star_rating')
					.find('.true').removeClass('true');
	
			$('#comment_content_wrap_star_grade_body_star .star_rating')
					.trigger('mouseleave');
	
			$('#fake')
					.removeAttr('id')
					.attr(
							'id',
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.attr('id'));
	
			$('#comment_content_wrap_star_grade_body_star .star_rating')
					.removeAttr('id');
	
		});
	
	$('#comment_blind_wrap').click(function() {
		$('#comment_content_wrap_star_grade_wrap').hide();
		$(this).hide();
	});

	
	</script>

</body>

</html>

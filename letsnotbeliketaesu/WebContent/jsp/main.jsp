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

<title>LNBLT Main</title>
<style>
#side {
	position: absolute;
	top: 100px;
	width: 220px;
	height: 500px;
	background: rgb(255, 56, 46);
	text-align: center;
}

#side ol {
	text-align: center;
	list-style: none;
}

#side ol li {
	padding-bottom: 2px;
	color: #FFFFFF;
	position: relative;
	padding-left: 28px;
	margin-top: 15px;
}

#side ol li span {
	position: absolute;
	left: 15px;
	top: 2px;
	display: block;
	width: 18px;
	height: 18px;
	line-height: 20px;
	text-align: center;
	color: black;
	font-size: 13px;
	background-color: white;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
}

#side ol li:nth-child(1) span {
	background-color: black;
	color: white;
}

#side ol li:nth-child(2) span {
	background-color: black;
	color: white;
}

#side ol li:nth-child(3) span {
	background-color: black;
	color: white;
}

#side ol li a {
	color: #FFFFFF;
	line-height: 20px;
	width: 160px;
	display: inline-block;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	text-decoration: none;
}

#side h4 {
	position: relative;
	height: 50px;
	line-height: 30px;
	font-size: 14px;
	text-indent: 15px;
	border-bottom: 1px solid black;
	display: block;
	-webkit-margin-before: 1.33em;
	-webkit-margin-after: 1.33em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	font-weight: bold;
}

.book_info_table {
	position: fixed;
	top: 50%;
	left: 50%;
	border: 1px solid black;
	background: white;
	width: 800px;
	height: 700px;
	margin-top: -351px;
	margin-left: -401px;
	display: none;
	z-index: 1;
}

.book {
	overflow: hidden;
	border-radius: 5px;
	background-color: pink;
	position: absolute !important;
	height: 314px;
	float: left;
	margin: 10px;
	width: 220px;
	padding: 0;
	border: 0;
	font: inherit;
	vertical-align: baseline;
}

.top-0 {
	top: 150px;
}

.top-1 {
	top: 550px;
}

.top-2 {
	top: 950px;
}

.top-3 {
	top: 1350px;
}

.left-0 {
	left: 360px;
}

.left-1 {
	left: 600px;
}

.left-2 {
	left: 840px;
}

.left-3 {
	left: 1080px;
}

.left-4 {
	left: 1320px;
}

.left-5 {
	left: 1560px;
}

.screen {
	position: fixed;
	width: 10000px;
	height: 10000px;
	background: rgba(200, 200, 200, .5);
	display: none;
}

.booktitle {
	position: absolute;
}

.booktitle-top-0 {
	top: 125px;
}

.booktitle-top-1 {
	top: 525px;
}

.booktitle-top-2 {
	top: 925px;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
	background-color: #FFEBEE;
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

.book_wrap {
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
.info_box h3{
	overflow: hidden;
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
	.book_info_table{
		position: fixed;
		top: 50%;
		left: 50%;
		background: #FAF8F5;
		width: 800px;
		height:750px;
		margin-top: -351px;
		margin-left: -401px;
		display: none;
		z-index: 5;
	}
	.book_info_wrap{
		position: relative;
		width: 800px;
		height: 290px;
		border-bottom:1px solid #d5d5d5;
		background-color: white;
	}
	.screen{
		position:fixed;
		width: 10000px;
		height: 10000px;
		background: rgba(51,51,51,0.5);
		display: none;
		z-index: 4;
	}
	.cover{
		width:200px;
		height:250px;
		position: absolute;
		top: 15px;
		left: 20px;
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
	.info{
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
	    margin-left: 100px;
	}
	.review_balloon:after {
	    content: "";
	    position: absolute;
	    height: 50px;
	    width: 50px;
	    border-radius: 25px;
	    z-index: 1;
	    background: transparent;
	    bottom: 95px;
	    left: -20px;
	}
	.review_balloon:before {
	    content: "";
	    position: absolute;
	    height: 50px;
	    width: 50px;
	    border-radius: 25px;
	    z-index: 2;
	    background: transparent;
	    bottom: 101px;
	    left: -20px;
	}
	.review_box{
		margin-top: 20px;
		margin-left: 30px;
	}
	.content{
		margin-top: 10px;
	    line-height: 20px;
	    color: #555555;
	    font-size: 14px;
	    white-space: pre-wrap;
	    margin-left: 20px;
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
	.review_more{
		color: #777777;
	    font-size: 12px;
	    font-weight: bold;
	    height: 40px;
	    line-height: 40px;
	    background-color: #f1efeb;
	    border: 1px solid #e8e4dc;
	    text-align: center;
	    -moz-border-radius: 3px;
	    -webkit-border-radius: 3px;
	    border-radius: 3px;
	margin-top: 20px;
	cursor: pointer;
}
	.wrap{
		position:absolute;
		top:100px;
		width:220px;
		height:500px;
		background:  rgb(255, 56, 46);
		text-align: left;
	}
	.wrap ol{
		text-align: center;
		list-style: none;
	}
	.wrap ol li{
		padding-bottom: 2px;
    	color: #FFFFFF;
    	position: relative;
    	padding-left: 28px;
    	margin-top: 15px;
	}
	span {	
    	position: absolute;
		left: 15px;
		top: 2px;
		display: block;
		width: 18px;
		height: 18px;
		line-height: 20px;
		text-align: center;
		color: black;
	 	font-size: 13px;
		background-color: white;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		border-radius: 3px;
    }
    .wrap ol li:nth-child(1) span{
    	background-color: black;
    	color: white;	
    }
     .wrap ol li:nth-child(2) span{
    	background-color: black;
    	color: white;	
    }
    .wrap ol li:nth-child(3) span{
    	background-color: black;
    	color: white;	
    }
	.wrap ol li a{
		color: #FFFFFF;
    	line-height:20px;
    	width: 160px;
 		display: inline-block;
    	white-space: nowrap;
   	 	overflow: hidden;
    	text-overflow: ellipsis;
    	text-decoration: none;
	}
	.wrap h4{
		position:relative;
		height: 50px;
		line-height:30px;
    	font-size: 14px;
    	text-indent: 15px;
    	border-bottom: 1px solid black;
    	display: block;
    	-webkit-margin-before: 1.33em;
    	-webkit-margin-after: 1.33em;
    	-webkit-margin-start: 0px;
    	-webkit-margin-end: 0px;
    	font-weight: bold;
    	text-align: center;
	}
	.book_info_table{
		position: fixed;
		top: 50%;
		left: 50%;
		background: #FAF8F5;
		width: 800px;
		height:750px;
		margin-top: -351px;
		margin-left: -401px;
		display: none;
		z-index: 5;
	}
	.book_info_wrap{
		position: relative;
		width: 800px;
		height: 290px;
		border-bottom:1px solid #d5d5d5;
		background-color: white;
	}
	.screen{
		position:fixed;
		width: 10000px;
		height: 10000px;
		background: rgba(51,51,51,0.5);
		display: none;
		z-index: 4;
	}
	.cover{
		width:200px;
		height:250px;
		position: absolute;
		top: 15px;
		left: 20px;
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
	.info{
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
	    margin-left: 100px;
	}
	.review_balloon:after {
	    content: "";
	    position: absolute;
	    height: 50px;
	    width: 50px;
	    border-radius: 25px;
	    z-index: 1;
	    background: transparent;
	    bottom: 95px;
	    left: -20px;
	}
	.review_balloon:before {
	    content: "";
	    position: absolute;
	    height: 50px;
	    width: 50px;
	    border-radius: 25px;
	    z-index: 2;
	    background: transparent;
	    bottom: 101px;
	    left: -20px;
	}
	.review_box{
		margin-top: 20px;
		margin-left: 30px;
	}
	.content{
		margin-top: 10px;
	    line-height: 20px;
	    color: #555555;
	    font-size: 14px;
	    white-space: pre-wrap;
	    margin-left: 20px;
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
	.review_more{
		color: #777777;
	    font-size: 12px;
	    font-weight: bold;
	    height: 40px;
	    line-height: 40px;
	    background-color: #f1efeb;
	    border: 1px solid #e8e4dc;
	    text-align: center;
	    -moz-border-radius: 3px;
	    -webkit-border-radius: 3px;
	    border-radius: 3px;
	    margin-top: 20px;
	    cursor: pointer;
	}
</style>
</head>
<body>
		<div class="wrap">
			<h4>베스트셀러 랭킹</h4>
			<div>
				<ol>
					<c:forEach var="bestBook" items="${bookRanking}">
						<li class="best_book_list"  data-isbn="${bestBook.isbn}" data-title="${bestBook.title}">
							<a href="#"><span>${bestBook.num}</span>${bestBook.title}</a>
						</li>
					</c:forEach>
				</ol>
			</div>
			<div class="book_info_table">
				<ul>
					<li>
						<div class="book_info_wrap">
							<div class="info">
								<div class="title">제목</div>
							</div>
							<div class="book_writer">작가</div>
						</div>
						<div class="book_intro_start">줄거리</div>
						<div class="book_intro">내용</div>
						<div class="book_review_start">코멘트</div>
						<div class="review_box">
						<div class="review_balloon">
							<div class="review_writer">코멘터</div>
								<p class="content">안녕</p>
								<p class="review_update_date">날짜</p>
									<a></a>
									<a></a>
							</div>
						</div>
						<img class="cover" alt="" src="">
					</li>
				</ul>
				<div class="review_more" style="display: block;">더보기</div>
			</div>
		</div>
		<div class="screen">

		</div>
		<div id="content">
			<div>
				<%
					int i = 0;
				%>
				<span class="booktitle booktitle-top-0 left-0">신간</span>
				<ul class="book_wrap">
					<c:forEach var="book" items="${newBook}">
						<li class="book top-0 left-<%=i++%>"><a href="#">
								<div class="info_box">
									<h3>${book.title}</h3>
									<div class="star_rating" id="${book.num}">
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
								</div> <img src="${book.image}" alt="${book.title}" />
						</a></li>
					</c:forEach>
				</ul>
			</div>

			<div>
				<%
					i = 0;
				%>
				<span class="booktitle booktitle-top-1 left-0">베스트 셀러</span>
				<ul class="book_wrap">
					<c:forEach var="book" items="${bestBook}">
						<li class="book top-1 left-<%=i++%>"><a href="#">
								<div class="info_box">
									<h3>${book.title}</h3>
									<div class="star_rating" id="${book.num}">
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
								</div> <img src="${book.image}" alt="${book.title}" />
						</a></li>
					</c:forEach>
				</ul>
			</div>
			<div>
				<%
					i = 0;
				%>
				<span class="booktitle booktitle-top-2 left-0">추천책</span>
				<ul class="book_wrap">
					<c:forEach var="book" items="${book}">
						<li class="book top-2 left-<%=i++%>"><a href="#">
								<div class="info_box">
									<h3>${book.title}</h3>
									<div class="star_rating" id="${book.num}">
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
								</div> <img src="${book.image}" alt="${book.title}" />
						</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="screen"></div>
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
		var list = $('.best_book_list');
		list.click(function() {

			var q = "";
			q = $(this).data('title');
			function getBook() {
				$.ajax({
					url : "getBook.do",
					type : "post",//post방식
					dataType : "json",//json
					data : {
						"title" : q
					},//넘어가는 파라미터
					error : function() {
						alert("에러!!");
					},
					success : function(json) {
						$(json).each(function() {
							var title = $('.title');
							var bookWriter = $('.book_writer');
							var cover = $('.cover');
							title.text(this.title);
							bookWriter.text(this.book_writer);
							cover.attr('src', this.image);
							cover.attr('alt', this.title + '의 커버 사진');
						});//each() end
					}
				});//$.ajax() end

			}//getBook() end
			var isbn = "";
			isbn = $(this).data('isbn');
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
						$(json).each(function() {
							var review_writer = $(".review_writer");
							var content = $(".content");
							var review_update_date = $(".review_update_date");
							review_writer.text(this.review_writer);
							content.text(this.content);
							review_update_date.text(this.regdate);
						});//each() end
					}
				});//$.ajax() end
			}//getReview() end
			getReview();
			getBook();
			function screenHide() {
				$('.book_info_table').show();
				$('.screen').show();
			}
			setTimeout(screenHide, 500);
		});
		$('.screen').click(function() {
			$('.book_info_table').hide();
			$('.screen').hide();
			var title = $('.title');
			var bookWriter = $('.book_writer');
			var cover = $('.cover');
			title.text('');
			bookWriter.text('');
			cover.attr('alt', '');
			cover.attr('src', '');
		});

		$(document).ready(function() {

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
		$(".star_rating .head")
				.click(
						function(event) {

							if ($(this).hasClass("true")) {
								$.ajax({
									url : "starDelete.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"bookNum" : $(this).closest(
												".star_rating").attr('id'),
										"starPointWriter" : "bong"
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
								});//$.ajax() end
								$(this).removeClass("true");
							} else if ($(this).closest('.star_rating').find(
									'.true').length == 1) {
								$.ajax({
									url : "starUpdate.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"bookNum" : $(this).closest(
												".star_rating").attr('id'),
										"starPointWriter" : "bong",
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 0.5
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
								});//$.ajax() end
								$(this).closest('.star_rating').find('.true')
										.removeClass('true')
								$(this).addClass("true");
							} else {
								$.ajax({
									url : "starInsert.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 0.5,
										"bookNum" : $(this).closest(
												".star_rating").attr('id'),
										"starPointWriter" : "bong",
										"reviewNum" : 0
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
								});//$.ajax() end
								$(this).addClass("true");

							}

							return false;
						});
		$(".star_rating .tail")
				.click(
						function(event) {

							if ($(this).hasClass("true")) {
								$.ajax({
									url : "starDelete.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"bookNum" : $(this).closest(
												".star_rating").attr('id'),
										"starPointWriter" : "bong"
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
								});//$.ajax() end
								$(this).removeClass("true");
							} else if ($(this).closest('.star_rating').find(
									'.true').length == 1) {
								$.ajax({
									url : "starUpdate.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"bookNum" : $(this).closest(
												".star_rating").attr('id'),
										"starPointWriter" : "bong",
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 1
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
								});//$.ajax() end
								$(this).closest('.star_rating').find('.true')
										.removeClass('true')
								$(this).addClass("true");
							} else {
								$.ajax({
									url : "starInsert.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 1,
										"bookNum" : $(this).closest(
												".star_rating").attr('id'),
										"starPointWriter" : "bong",
										"reviewNum" : 0
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
								});//$.ajax() end

								$(this).closest('.star_rating').find('.true')
										.removeClass('true')
								$(this).addClass("true");

							}

							return false;
						});
	</script>
</body>
</html>

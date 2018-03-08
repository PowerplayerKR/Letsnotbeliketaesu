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
	cursor: pointer;
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

.info_box h3 {
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

#comment {
	width: 600px;
	height: 300px;
	padding: 0px;
	background: #737373;
	margin: 0;
	padding: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -300px;
	display: none;
	z-index: 33;
	border-radius: 2px;
	text-align: left;
}

#comment_content_wrap {
	width: 100%;
	height: 70%;
	position: absolute;
	top: 20%;
	left: 0%;
	margin: 0;
	padding: 0;
	margin: 30px 0 0 0;
}

#comment_content_wrap_img {
	position: absolute;
	margin: 0;
	padding: 0;
	border: 0;
	width: 15%;
	height: 40%;
	margin: -30px 0 0 15px;
}

#inputText {
	position: absolute;
	margin: 0;
	padding: 0;
	border: 0;
	width: 75%;
	height: 70%;
	margin: 0 0 0 125px;
}

#comment_content_wrap_button {
	position: absolute;
	margin: 0;
	padding: 0;
	width: 60px;
	height: 40px;
	bottom: 5%;
	right: 3%;
	border: 0px;
	background: yellow;
	border-radius: 20px;
}

#comment_content_wrap_star_rating {
	position: absolute;
	margin: -30px 0 0 125px;
	padding: 0;
	letter-spacing: 0;
	display: inline-block;
	color: #ccc;
	text-decoration: none;
	position: absolute;
}

#comment_content_wrap_star_rating i {
	color: #ffff00;
}

#body_blind_wrap {
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

#comment_content_wrap_star_grade_wrap {
	width: 222px;
	height: 250px;
	position: absolute;
	margin: 0 0 0 -111px;
	z-index: 51;
	display: none;
}

#comment_content_wrap_star_grade_head {
	width: 100%;
	height: 10%;
	position: absolute;
}

#comment_content_wrap_star_grade_head_up {
	margin: 2px 0 0 106px;
}

#comment_content_wrap_star_grade_body {
	width: 100%;
	height: 90%;
	position: absolute;
	margin: 25px 0 0 0;
	background: gray;
	border-radius: 10px;
}

#comment_blind_wrap {
	width: 100%;
	height: 100%;
	position: absolute;
	background: white;
	opacity: 0.5;
	display: none;
	z-index: 50;
}

#comment_content_wrap_star_grade_body_star {
	width: 80%;
	height: 37px;
	margin: -20px 0 0 22px;
}

#comment_head {
	width: 100%;
	height: 20%;
	position: absolute;
}

#tool_tip {
	width: 90px;
	height: 30px;
	background: white;
	text-align: center;
	display: none;
	position: absolute;
	border: 1px solid black;
	z-index: 99;
}

#tool_tip_head {
	margin: -22px 0 0 -9px;
	position: absolute;
}

.book_info_table {
	position: fixed;
	top: 50%;
	left: 50%;
	background: #FAF8F5;
	width: 800px;
	height: 750px;
	margin-top: -351px;
	margin-left: -401px;
	display: none;
	z-index: 5;
}

.side {
	position: absolute;
	top: 100px;
	width: 220px;
	height: 500px;
	background: rgb(255, 56, 46);
	text-align: left;
}

.side ol {
	text-align: center;
	list-style: none;
}

.side ol li {
	padding-bottom: 2px;
	color: #FFFFFF;
	position: relative;
	padding-left: 28px;
	margin-top: 15px;
}

.side ol li span {
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

.side ol li:nth-child(1) span {
	background-color: black;
	color: white;
}

.side ol li:nth-child(2) span {
	background-color: black;
	color: white;
}

.side ol li:nth-child(3) span {
	background-color: black;
	color: white;
}

.side ol li a {
	color: #FFFFFF;
	line-height: 20px;
	width: 160px;
	display: inline-block;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	text-decoration: none;
}

.side h4 {
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
	text-align: center;
}

.book_info_table {
	position: fixed;
	top: 50%;
	left: 50%;
	background: #FAF8F5;
	width: 800px;
	height: 750px;
	margin-top: -351px;
	margin-left: -401px;
	display: none;
	z-index: 5;
}

.book_info_wrap {
	position: relative;
	width: 800px;
	height: 290px;
	border-bottom: 1px solid #d5d5d5;
	background-color: white;
}

.screen {
	position: fixed;
	width: 10000px;
	height: 10000px;
	background: rgba(51, 51, 51, 0.5);
	display: none;
	z-index: 4;
}

.cover {
	width: 200px;
	height: 250px;
	position: absolute;
	top: 15px;
	left: 20px;
}

.title {
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

.book_writer {
	position: absolute;
	left: 230px;
	top: 80px;
}

.info {
	position: absolute;
	left: 220px;
	top: 20px;
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	font-size: 100%;
	vertical-align: baseline;
	border-bottom: 1px solid #ded6c7;
}

.book_intro_start {
	font-size: 14px;
	font-weight: bold;
	color: #555555;
	margin-top: 20px;
	margin-left: 20px;
	margin-bottom: 20px;
}

.book_intro {
	margin-left: 20px;
}

.book_review_start {
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

.review_box {
	margin-top: 20px;
	margin-left: 30px;
}

.content {
	margin-top: 10px;
	line-height: 20px;
	color: #555555;
	font-size: 14px;
	white-space: pre-wrap;
	margin-left: 20px;
}

.review_writer {
	font-size: 14px;
	margin-left: 20px;
	margin-top: 5px;
}

.review_update_date {
	display: block;
	color: #aaaaaa;
	font-size: 12px;
	position: absolute;
	bottom: 20px;
	left: 20px;
}

.review_more {
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

#header {
	top: 0;
}

.book img {
	width: 220px;
	height: 314px;
}

.book_title {
	width: 220px;
	height: 17px;
	overflow: hidden;
}
</style>
</head>
<body>
	<div id="tool_tip">
		<i class="fa fa-caret-up fa-2x" aria-hidden="true" id="tool_tip_head"></i>
		<p style="text-align: center">보고 싶어요</p>
	</div>
	<div id="body_blind_wrap"></div>


	<div id="comment">

		<div id="comment_head">
			<h3>
				<h4>제목</h4>
				<i class="fa fa-angle-down fa-1x" id="star_check">
					<div id="comment_content_wrap_star_grade_wrap">
						<div id="comment_content_wrap_star_grade_head">

							<i class="fa fa-caret-up fa-2x"
								id="comment_content_wrap_star_grade_head_up"></i>

						</div>
						<div id="comment_content_wrap_star_grade_body">
							<div id="comment_content_wrap_star_grade_body_infotext">
								<h4 style="display: block; margin: 19px 61px;">평가 해주세요</h4>
							</div>

							<div id="comment_content_wrap_star_grade_body_mid_text">
								<h5 style="margin: 22px 63px;">본책 확실함?</h5>

							</div>
							<div id="comment_content_wrap_star_grade_body_star">
								<div class="star_rating" style="text-align: center;">
									<i class="fa fa-star-o fa-2x" aria-hidden="true"><div
											class="head"></div>
										<div class="tail"></div> <span></span></i> <i
										class="fa fa-star-o fa-2x" aria-hidden="true"><div
											class="head"></div>
										<div class="tail"></div> <span></span></i> <i
										class="fa fa-star-o fa-2x" aria-hidden="true"><div
											class="head"></div>
										<div class="tail"></div> <span></span></i> <i
										class="fa fa-star-o fa-2x" aria-hidden="true"><div
											class="head"></div>
										<div class="tail"></div> <span></span></i> <i
										class="fa fa-star-o fa-2x" aria-hidden="true"><div
											class="head"></div>
										<div class="tail"></div> <span></span></i>
								</div>
							</div>

							<div id="comment_content_wrap_star_grade_body_bottom_text">
								<h4
									style="text-align: center; margin-bottom: 15px; margin-top: 17px;">댓글
									달려면 별점 클릭</h4>

							</div>




							<div class="book_wrap">
								<button class="wish_btn">
									<i class="fa fa-heart"></i>보고싶어요
								</button>
								<button class="comment_btn">
									<i class="fa fa-comment"></i> 관심없어요
								</button>
							</div>
						</div>
					</div>
				</i> <i class="fa fa-times fa-2x"
					style="position: absolute; right: 4%; top: 4%"
					id="comment_head_end"></i>
			</h3>
		</div>
		<div id="comment_blind_wrap"></div>


		<div id="comment_content_wrap">
			<img
				src="http://chulsa.kr/files/attach/images/67/647/673/018/220ebc4544181643a70ac6f4af9c617f.jpg"
				id="comment_content_wrap_img">
			<tr></tr>
			<div id="comment_content_wrap_star_rating"
				style="text-align: center;">
				<i aria-hidden="true"></i> <i aria-hidden="true"></i> <i
					aria-hidden="true"></i> <i aria-hidden="true"></i> <i
					aria-hidden="true"></i>
			</div>
			<form>
				<textarea placeholder="여기에 댓글을 입력해주세요 " id="inputText"
					name="comment"></textarea>

				<input type="submit" id="comment_content_wrap_button">
			</form>

		</div>





	</div>
	<div class="wrap">
		<jsp:include page="/template/header.jsp"></jsp:include>
		<div class="side">
			<h4>베스트셀러 랭킹</h4>
			<div>
				<ol>
					<c:forEach var="bestBook" items="${bookRanking}">
						<li class="best_book_list" data-isbn="${bestBook.isbn}"
							data-title="${bestBook.title}"><a href="#"><span>${bestBook.num}</span>${bestBook.title}</a>
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
								<a></a> <a></a>
							</div>
						</div> <img class="cover" alt="" src="">
					</li>
				</ul>
				<div class="review_more" style="display: block;">더보기</div>
			</div>
		</div>
		<div id="content">
			<div>
				<%
					int i = 0;
				%>
				<span class="booktitle booktitle-top-0 left-0">신간</span>
				<ul class="book_wrap">
					<c:forEach var="book" items="${newBook}">
						<li class="book top-0 left-<%=i++%>" data-isbn="${book.isbn}"
							data-title="${book.title}"><a href="#">
								<div class="info_box">
									<div class="book_title">
										<h3>${book.title}</h3>
									</div>
									<div class="star_rating" id="${book.isbn}">
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
						<li class="book top-1 left-<%=i++%>" data-isbn="${book.isbn}"
							data-title="${book.title}"><a href="#">
								<div class="info_box">
									<div class="book_title">
										<h3>${book.title}</h3>
									</div>
									<div class="star_rating" id="${book.isbn}">
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
						<li class="book top-2 left-<%=i++%>" data-isbn="${book.isbn}"
							data-title="${book.title}"><a href="#">
								<div class="info_box">
									<div class="book_title">
										<h3>${book.title}</h3>
									</div>
									<div class="star_rating" id="${book.isbn}">
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
		var getclick = function() {
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
					url : "getReview.do",
					type : "post",//post방식
					dataType : "json",//json
					data : {
						"isbn" : isbn
					},//넘어가는 파라미터
					error : function() {
						alert("에러!!");
					},
					success : function(json) {
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
		};

		var list = $('.best_book_list');
		var list1 = $('.book');

		list.click(getclick);
		list1.click(getclick);

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
					var offset = $(this).offset();
					var toolTip = $('#tool_tip');
					toolTip.css({
						"top" : offset.top + 50,
						"left" : offset.left - 38
					});
					if ($(this).hasClass('true')) {
						toolTip.find('p').text('취소하기');
						toolTip.find('p').css('color', 'red');
					} else {
						toolTip.find('p').css('color', 'black');
						switch ($(this).closest('i').prevAll().length) {
						case 0:
							toolTip.find('p').text('싫어요');
							break;
						case 1:
							toolTip.find('p').text('별로예요');
							break;
						case 2:
							toolTip.find('p').text('보통 이예요');
							break;
						case 3:
							toolTip.find('p').text('재미 있어요');
							break;
						case 4:
							toolTip.find('p').text('최고예요!');
						}
					}
					toolTip.show();
					$(this).closest("i").parent().children("i").removeClass(
							"fa fa-star 2x").removeClass("fa fa-star-o fa-2x")
							.removeClass("fa fa-star-half-o fa-2x");
					$(this).closest("i").addClass("fa fa-star fa-2x").prevAll(
							"i").addClass("fa fa-star fa-2x");
					$(this).closest("i").nextAll("i").addClass(
							"fa fa-star-o fa-2x");
					return false;
				});
		$(".star_rating i .head").mouseenter(
				function(event) {
					var offset = $(this).offset();
					var toolTip = $('#tool_tip');
					toolTip.css({
						"top" : offset.top + 50,
						"left" : offset.left - 38
					});
					if ($(this).hasClass('true')) {
						toolTip.find('p').text('취소하기');
						toolTip.find('p').css('color', 'red');
					} else {
						toolTip.find('p').css('color', 'black');
						switch ($(this).closest('i').prevAll().length) {
						case 0:
							toolTip.find('p').text('최악 이에요');
							break;
						case 1:
							toolTip.find('p').text('재미 없어요');
							break;
						case 2:
							toolTip.find('p').text('부족 해요');
							break;
						case 3:
							toolTip.find('p').text('볼만 해요');
							break;
						case 4:
							toolTip.find('p').text('훌륭 해요');
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
		$(".star_rating .head")
				.click(
						function(event) {
							if ($(this).hasClass("true")) {
								if ($('#inputText').data('comment') != ""
										|| $(this).closest('.info_box').find(
												'.comment_btn').data("comment") != "") {
									var result = confirm('확인을 누르실경우 댓글까지 함께 삭제됩니다.');
									var check = true;
								} else {
									var result = true;
									var check = false;
								}
								if (result) {
									$
											.ajax({
												url : "starDelete.do",
												type : "post",//post방식
												dataType : "json",//json
												data : {
													"isbn" : $(this).closest(
															".star_rating")
															.attr('id'),
													"starPoint" : $(this)
															.closest('i')
															.prevAll('i').length + 0.5
												},
												error : function(request,
														status, error) {
													alert("code:"
															+ request.status
															+ "\n"
															+ "message:"
															+ request.responseText
															+ "\n" + "error:"
															+ error);
												},
												success : function(json) {
													console.log(json);
												}
											});//$.ajax() end
									if (check) {
										$.ajax({
											url : "reviewDelete.do",
											type : "post",//post방식
											dataType : "json",//json
											data : {
												"isbn" : $(this).closest(
														".star_rating").attr(
														'id')
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
										});//$.ajax() end
									}
									$(this).closest('.star_rating').find(
											'.true').removeClass('true')
									if ($('#fake').length > 0) {
										$('#fake').find('.true').removeClass(
												'true');
										$('#fake').trigger('mouseleave');
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									} else {
										$(this).closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									}
								}
							} else if ($(this).closest('.star_rating').find(
									'.true').length == 1) {
								if ($(this).closest('.star_rating').find(
										'.true').closest('i').find('.true')
										.hasClass('head')) {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 0.5)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 0.5);
								} else {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 0.5)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 1);
								}
								$.ajax({
									url : "starUpdate.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 0.5,
										"starSub" : starSub
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
								if ($('#fake').length > 0) {
									console.log("ㅎ허ㅓ허허허");
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.head').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							} else {
								$.ajax({
									url : "starInsert.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 0.5,
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
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
								if ($('#fake').length > 0) {
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.head').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							}
							if ($('#fake').length > 0) {
								$('#comment_content_wrap_star_rating')
										.children('i').removeClass(
												"fa fa-star-half-o fa-1x")
										.removeClass("fa fa-star fa-1x")
										.removeClass("fa fa-star-o fa-1x");
								if ($('#fake').find('.true').hasClass('true')) {
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.addClass("fa fa-star-half-o fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
								}
							}
							return false;
						});
		$(".star_rating .tail")
				.click(
						function(event) {
							if ($(this).hasClass("true")) {
								if ($('#inputText').data('comment') != ""
										|| $(this).closest('.info_box').find(
												'.comment_btn').data("comment") != "") {
									var result = confirm('확인을 누르실경우 댓글까지 함께 삭제됩니다.');
									var check = true;
								} else {
									var result = true;
									var check = false;
								}
								if (result) {
									$
											.ajax({
												url : "starDelete.do",
												type : "post",//post방식
												dataType : "json",//json
												data : {
													"isbn" : $(this).closest(
															".star_rating")
															.attr('id'),
													"starPoint" : $(this)
															.closest('i')
															.prevAll('i').length + 1
												},
												error : function(request,
														status, error) {
													alert("code:"
															+ request.status
															+ "\n"
															+ "message:"
															+ request.responseText
															+ "\n" + "error:"
															+ error);
												},
												success : function(json) {
													console.log(json);
												}
											});//$.ajax() end
									if (check) {
										$.ajax({
											url : "reviewDelete.do",
											type : "post",//post방식
											dataType : "json",//json
											data : {
												"isbn" : $(this).closest(
														".star_rating").attr(
														'id')
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
										});//$.ajax() end
									}
									$(this).closest('.star_rating').find(
											'.true').removeClass('true')
									if ($('#fake').length > 0) {
										$('#fake').find('.true').removeClass(
												'true');
										$('#fake').trigger('mouseleave');
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									} else {
										$(this).closest('.info_box').find(
												'.comment_btn').data('comment',
												"");
									}
								}
							} else if ($(this).closest('.star_rating').find(
									'.true').length == 1) {
								if ($(this).closest('.star_rating').find(
										'.true').closest('i').find('.true')
										.hasClass('head')) {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 1)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 0.5);
								} else {
									var starSub = ($(this).closest('i')
											.prevAll('i').length + 1)
											- ($(this).closest('.star_rating')
													.find('.true').closest('i')
													.prevAll('i').length + 1);
								}
								$.ajax({
									url : "starUpdate.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 1,
										"starSub" : starSub
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
								if ($('#fake').length > 0) {
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.tail').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							} else {
								$.ajax({
									url : "starInsert.do",
									type : "post",//post방식
									dataType : "json",//json
									data : {
										"starPoint" : $(this).closest('i')
												.prevAll('i').length + 1,
										"isbn" : $(this)
												.closest(".star_rating").attr(
														'id'),
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
								if ($('#fake').length > 0) {
									$('#fake').find('.true')
											.removeClass('true');
									$(
											$('#fake').children('i')[$(this)
													.closest('i').prevAll('i').length])
											.find('.tail').addClass('true')
									$('#fake').trigger('mouseleave');
								}
							}
							if ($('#fake').length > 0) {
								$('#comment_content_wrap_star_rating')
										.children('i').removeClass(
												"fa fa-star-half-o fa-1x")
										.removeClass("fa fa-star fa-1x")
										.removeClass("fa fa-star-o fa-1x");
								if ($('#fake').find('.true').hasClass('true')) {
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.addClass("fa fa-star fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[$('#fake')
													.closest('.info_box').find(
															'.true').closest(
															'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
								}
							}
							return false;
						});
		$('.comment_btn')
				.click(
						function() {
							$('#comment').show();
							$('#comment_title').text(
									$(this).closest('a').find('img')
											.attr('alt'));
							$('#comment_content_wrap_img').attr(
									'src',
									$(this).closest('a').find('img')
											.attr('src'));
							$('#body_blind_wrap').show();
							var x = $(this).closest('.info_box').find('.true');
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.attr(
											'id',
											$(this).closest('.info_box').find(
													'.star_rating').attr('id'));
							$(this).closest('.info_box').find('.star_rating')
									.removeAttr('id').attr('id', "fake");
							$('#comment_content_wrap_star_rating')
									.children('i').removeClass(
											"fa fa-star fa-1x").removeClass(
											"fa fa-star-o fa-1x").removeClass(
											"fa fa-star-half-o fa-1x");
							$('#inputText').val($(this).data('comment'));
							$('#inputText').data('comment',
									$(this).data('comment'));
							if ($(this).data('comment') == "") {
								$('#comment_content_wrap_button').attr(
										"disabled", "true");
							}
							if (x.hasClass('true') == true) {
								if (x.hasClass('head') == true) {
									$(
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.find('.head').addClass('true');
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.addClass("fa fa-star-half-o fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
								} else {
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.addClass("fa fa-star fa-1x")
											.prevAll("i").addClass(
													"fa fa-star fa-1x");
									$(
											$(
													'#comment_content_wrap_star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.nextAll("i").addClass(
													"fa fa-star-o fa-1x");
									$(
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.children('i')[x.closest(
													'i').prevAll('i').length])
											.find('.tail').addClass('true')
								}
								$(
										'#comment_content_wrap_star_grade_body_star .star_rating')
										.trigger('mouseleave');
							} else {
								$('#star_check').trigger('click');
							}
						});
		$('#body_blind_wrap')
				.click(
						function() {
							$('#comment').hide();
							$(this).hide();
							$('#comment_content_wrap_star_grade_wrap').hide();
							$('#comment_blind_wrap').hide();
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.find('.true').removeClass('true');
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.trigger('mouseleave');
							$('#fake')
									.removeAttr('id')
									.attr(
											'id',
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.attr('id'));
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.removeAttr('id');
						});
		$('#comment_blind_wrap').click(function() {
			$('#comment_content_wrap_star_grade_wrap').hide();
			$(this).hide();
		});
		$('#star_check').click(function() {
			$('#comment_content_wrap_star_grade_wrap').show();
			$('#comment_blind_wrap').show();
		});
		$('#comment_head_end')
				.click(
						function() {
							$('#comment_content_wrap_star_grade_wrap').hide();
							$('#comment').hide();
							$('#body_blind_wrap').hide();
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.find('.true').removeClass('true');
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.trigger('mouseleave');
							$('#fake')
									.removeAttr('id')
									.attr(
											'id',
											$(
													'#comment_content_wrap_star_grade_body_star .star_rating')
													.attr('id'));
							$(
									'#comment_content_wrap_star_grade_body_star .star_rating')
									.removeAttr('id');
						});
		$("form")
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
								if (comment.trim() == ""
										|| beforeComment == comment) {
									alert("제데로 입력해주세요");
								} else {
									if (beforeComment == "") {
										$
												.ajax({
													url : "reviewInsert.do",
													type : "post",//post방식																																																																																																																																																																																																																																																																																																																																																								
													dataType : "json",//json
													data : {
														"isbn" : $(
																'#comment_content_wrap_star_grade_body_star .star_rating')
																.attr('id'),
														"content" : comment
													},
													error : function(request,
															status, error) {
														alert("code:"
																+ request.status
																+ "\n"
																+ "message:"
																+ request.responseText
																+ "\n"
																+ "error:"
																+ error);
													},
													success : function(json) {
														console.log(json);
													}
												});//$.ajax() end
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												comment);
										$('#inputText')
												.data('comment', comment);
									} else {
										$
												.ajax({
													url : "reviewUpdate.do",
													type : "post",//post방식
													dataType : "json",//json
													data : {
														"isbn" : $(
																'#comment_content_wrap_star_grade_body_star .star_rating')
																.attr('id'),
														"content" : comment
													},
													error : function(request,
															status, error) {
														alert("code:"
																+ request.status
																+ "\n"
																+ "message:"
																+ request.responseText
																+ "\n"
																+ "error:"
																+ error);
													},
													success : function(json) {
														console.log(json);
													}
												});//$.ajax() end
										$('#fake').closest('.info_box').find(
												'.comment_btn').data('comment',
												comment);
										$('#inputText')
												.data('comment', comment);
									}
								}
							} else {
								$('#star_check').trigger('click');
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

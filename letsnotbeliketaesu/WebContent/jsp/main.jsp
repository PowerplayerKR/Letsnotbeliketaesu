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
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="/template/header.jsp"></jsp:include>
		<div id="side">
			<h4>베스트셀러 랭킹</h4>
			<div>
				<ol>
					<c:forEach var="bestBook" items="${bookRanking}">
						<li class="best_book_list" data-title="${bestBook.title}"><a
							href="#"><span>${bestBook.num}</span>${bestBook.title}</a></li>
					</c:forEach>
				</ol>
			</div>
			<div class="book_info_table">
				<div class="book_info_wrap">
					<div class="title">제목</div>
					<div class="book_writer">작가</div>
					<img class="cover" alt="" src=""> <span
						style="display: inline-block; width: 14px; height: 13px; background: url(&amp;quot;https://d3sz5r0rl9fxuc.cloudfront.net/assets/stars/star_H.gray_1-2502b64644c5146129a92d5849112b08e460a5c3ca270048e8d708edf5d115fe.png&amp;quot;) 0px 0px/14px 13px no-repeat;"></span>
					<span
						style="display: inline-block; width: 14px; height: 13px; margin-left: 1px; background: url(&amp;quot;https://d3sz5r0rl9fxuc.cloudfront.net/assets/stars/star_gray-ab3f922b9014d6e60902dec1d93ae5493f36f7f37971c6791be64c56d903ef63.png&amp;quot;) 0px 0px/14px 13px no-repeat;"></span>
				</div>
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
			function getUsers() {
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

			}//getUsers() end

			getUsers();
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

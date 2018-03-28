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
	body {
		background: #E5E5E5;
		font-family: 'Noto Sans KR', sans-serif;
	}
	
	.book_list {
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
		position: relative;
    	top: -290px;
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
		z-index:3;
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
		text-align: center;
	}
	
	.book_wrap li:hover {
		box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
			rgba(0, 0, 0, 0.19);
	}
	
	.book_wrap li:nth-child(7) button {
		top: 70px
	}
	
	.book_img_wrap::hover .book_img::before {
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
		text-align: center;
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
	
	.inputText {
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
		z-index: 101;
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
		z-index: 100;
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
	
	.book_info_table{
		position: absolute;
	    left: 50%;
	    background: rgb(250,248,248);
	    width: 800px;
	    margin-left: -401px;
	    margin-top: 150px;
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
	.book{
		position:relative;
		width: 100%;
		height: auto;
		top: -150px;
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

	#header {
		top: 0;
	}
	
	.book_title {
		width: 220px;
		height: 17px;
		overflow: hidden;
	}
	.report_text_warp{
		display: none;
	}
	.book_info_ul{
		margin-bottom: 50px;
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
	.info_wrap:hover .book_img::before {
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
	.details_book_img_wrap:hover .book_img::before {
		content: "";
		width: 220px;
		height: 314px;
		position: absolute;
		display: block;
		transition: .5s ease;
		background: rgba(0, 0, 0, .7)
	}
	.details_book_img_wrap,:hover+.info_box{	
    	transform: translateY(0px);
	}
	.info_box:hover {
		transform: translateY(0px);
	}
	
	#searched_movies_title{
		position: relative;
		top: 150px;
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
    .book_info_table_wrap {
		position: relative;
		width: 800px;
		height: 314px;
		border-bottom: 1px solid #d5d5d5;
		background-color: white;
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
	}
	a{
		text-decoration: none;
		color: black;
	}
.review_writer .review_star_rating {
	margin-left:10px;
	color:#ccc
	}
	.review_star_rating i.fa-star, .review_star_rating i.fa-star-half-o {
	color: yellow;
}
	#comment_confirm{
  position: fixed;
  width: 320px;
  height: 100px;
  background: #ccc;
  z-index:200;
  left:50%;
  top:15%;
  margin-left: -160px;
  border-radius: 300px;
  display:none;
 }
 #comment_confirm span{
 color:red;
 text-align:center;
 line-height: 100px;
 font-size: 25px;
 text-align: center
 }
</style>
</head>
<body>
	<div class="loader">
	<img class="loader_img" src="../letsnotbeliketaesu/img/ajax_loader6.gif">
</div>
<div class="screen"></div>
	<div id="tool_tip">
		<i class="fa fa-caret-up fa-2x" aria-hidden="true" id="tool_tip_head"></i>
		<p style="text-align: center">보고 싶어요</p>
	</div>
	<div id="body_blind_wrap"></div>


	<div id="comment">

		<div id="comment_head">
			<h3>
				<span id="comment_title"></span> <i class="fa fa-angle-down fa-1x"
					id="star_check">
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
								<i class="fa fa-star-o fa-2x"   aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
								<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
								<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
								<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
								<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div class="head"></div><div class="tail"></div><span></span></i>
						</div>
							</div>

							<div id="comment_content_wrap_star_grade_body_bottom_text">
								<h4
									style="text-align: center; margin-bottom: 15px; margin-top: 17px;">댓글
									달려면 별점 클릭</h4>

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
			<div class="star_rating" style="text-align: center;">
							<i class="fa fa-star-o fa-2x"   aria-hidden="true"><div></div><div></div></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div><span></span></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div><span></span></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div><span></span></i>
							<i class="fa fa-star-o fa-2x"  aria-hidden="true"><div></div><div></div><span></span></i>
						</div>
			<form>
				<textarea placeholder="여기에 댓글을 입력해주세요 " class="inputText"
					name="comment"></textarea>

				<input type="submit" id="comment_content_wrap_button">
			</form>

		</div>





	</div>
	
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
						<i class="fa fa-star-o fa-2x" aria-hidden="true">
							<div class="head"></div>
							<div class="tail"></div>
						</i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true">
							<div class="head"></div>
							<div class="tail"></div>
						</i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true">
							<div class="head"></div>
							<div class="tail"></div>
						</i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true ">
							<div class="head"></div>
							<div class="tail"></div>
						</i>
						<i class="fa fa-star-o fa-2x" aria-hidden="true">
							<div class="head"></div>
							<div class="tail "></div>
						</i>
					</div>
                    <button class="wish_btn">
                        <i class="fa fa-heart"></i>보고싶어요
                    </button>
                    <button class="comment_btn" onclick="commentBtnClick();">
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
	<div class="report_text_warp">
		<form>
				<textarea class="report_txt" placeholder="여기에 사유를(을) 입력해주세요 " style="resize: none; width: 1000px; height: 100px;"></textarea>
				<input type="submit" class="report_submit">
			</form>
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
		</div>
		<div id="content">
			<div>
				<span class="booktitle booktitle-top-0 left-0"><a href="newBook.do">신간</a></span>
				<ul class="book_wrap">
					<c:forEach var="book" items="${newBook}" varStatus="status">
						<li class="book_list top-0 left-${status.index}" data-isbn="${book.isbn}"data-title="${book.title}">
								<div class="info_wrap" data-title="${book.title}" data-isbn="${book.isbn}" >
							<div class="book_img_wrap" data-img="${book.image}" data-title="${book.title}" data-comment="${book.content}" data-isbn="${book.isbn}">
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

			<div>
				<span class="booktitle booktitle-top-1 left-0"><a href="bestBook.do">베스트 셀러</a></span>
				<ul class="book_wrap">
					<c:forEach var="book" items="${bestBook}" varStatus="status">
						<li class="book_list top-1 left-${status.index}" data-isbn="${book.isbn}"
							data-title="${book.title}"><a href="#">
								<div class="info_wrap" data-title="${book.title}" data-isbn="${book.isbn}" >
							<div class="book_img_wrap" data-img="${book.image}" data-title="${book.title}" data-comment="${book.content}" data-isbn="${book.isbn}"">
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
			<div>
				<span class="booktitle booktitle-top-2 left-0">추천책</span>
				<ul class="book_wrap">
					<c:forEach var="book" items="${book}" varStatus="status">
							<li class="book_list top-2 left-${status.index}" data-isbn="${book.isbn}"data-title="${book.title}">
										<div class="info_wrap" data-title="${book.title}" data-isbn="${book.isbn}" >
									<div class="book_img_wrap" data-img="${book.image}" data-title="${book.title}" data-comment="${book.content}" data-isbn="${book.isbn}">
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
	</div>
	<div class="screen"></div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../letsnotbeliketaesu/js/default.js"></script>
	<script>
		var search = $('#search');
		var searchOption = $("#searchOption");
		var keyword = "";
		var searchOptionNum = 1;
		search.keyup(function() {
			keyword = search.val();
		});
		searchOption.change(function() {
			alert(this.value);
			searchOptionNum = this.value;
		})

		$(function() {
			$("#search").autocomplete({
				source : function(request, response) {
					$.ajax({
						type : 'post',
						url : "autocomplete.do",
						dataType : "json",
						data : {
							"searchOption" : searchOptionNum,
							"keyword" : keyword
						},
						success : function(data) {
							//서버에서 json 데이터 response 후 목록에 뿌려주기 위함
							response($.map(data, function(item) {
								return {
									label : item.title,
									value : item.title
								}
							}));
						}
					});
				},
				//조회를 위한 최소글자수
				minLength : 2,
				select : function(event, ui) {
					// 만약 검색리스트에서 선택하였을때 선택한 데이터에 의한 이벤트발생
				}
			});
		});
		
		
		$(".book_img_wrap").click(function() {
			var q = "";
			q = $(this).data('title');
			function getBook() {
				$.ajax({
					url:"getBook.do",
					type:"post",//post방식
					dataType:"json",//json
					data:{"title":q},//넘어가는 파라미터
					error:function(){
						alert("에러!!");
					},
					success:function(json) {
						$(json).each(function() {
						var title = $('.title');
						var bookWriter = $('.book_writer');
						var book_intro = $('.book_intro');
						var cover = $('.cover');
						title.text(this.title);
						bookWriter.text(this.book_writer);
						cover.attr('src',this.image);
						cover.attr('alt',this.title+'의 커버 사진');
						book_intro.text(this.introduce);
						});//each() end
						setTimeout(screenHide, 500);
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
						var Cnum = 0; 
						$(json).each(function() {
							var review_box = $("<div class='review_box' data-num='"+this.ROWNUM+"'>");
							var review_balloon = $("<div class='review_balloon'>");
							var review_writer = $("<div class='review_writer'>").text(this.review_writer);
							var span_star=$("<span class='review_star_rating'><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i></span>");
							var content = $("<div class='content_wrap'>").text(this.content);
							var review_update_date = $("<p class='review_update_date'>").text(this.regdate);
							var user_img = $("<img class='user_img' src='../last_project/img/user.jpg'>");
							var report = $("<button onclick='report($(this));' data-email='"+this.review_email+"' data-num='"+this.num+"'>신고하기</button>");
							review_writer.append(span_star);
							review_balloon.append(review_writer,content,review_update_date);
							review_box.append(user_img,review_balloon,report);
							$(".book_info_li").append(review_box);
							span_star.children('i').each(function () { //'fa-star-half-o' 'fa-star'
							$(this).addClass($(this).index()<star_point?star_point/($(this).index()+1)<1?'fa-star-half-o':'fa-star':'fa-star-o' );})
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
			var image = $(this).data("img");
			var comm = $(this).data("comment");
			$(".book_info_table .comment_btn").data({ 
				  "img": image,
				  "title": title,
				  "comment":comm 
				});
			getReview();
			getBook();
			function screenHide() {
					$('.book_info_table').show();
					$('.screen').show();	
			}
		});
		
		var list = $('.best_book_list');
		list.click(function() {
			
			var q = "";
			q = $(this).data('title');
			function getBook() {
				$.ajax({
					url:"getBook.do",
					type:"post",//post방식
					dataType:"json",//json
					data:{"title":q},//넘어가는 파라미터
					error:function(){
						alert("에러!!");
					},
					success:function(json) {
						$(json).each(function() {
							var title = $('.title');
							var bookWriter = $('.book_writer');
							var book_intro = $('.book_intro');
							var cover = $('.cover');
							title.text(this.title);
							bookWriter.text(this.book_writer);
							cover.attr('src',this.image);
							cover.attr('alt',this.title+'의 커버 사진');
							book_intro.text(this.introduce);
						});//each() end
						setTimeout(screenHide, 500);
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
						var Cnum = 0; 
						$(json).each(function() {
							var review_box = $("<div class='review_box' data-num='"+this.ROWNUM+"'>");
							var review_balloon = $("<div class='review_balloon'>");
							var review_writer = $("<div class='review_writer'>").text(this.review_writer);
							var span_star=$("<span class='review_star_rating'><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i><i class='fa  fa-1x'   aria-hidden='true'></i></span>");
							var content = $("<div class='content_wrap'>").text(this.content);
							var review_update_date = $("<p class='review_update_date'>").text(this.regdate);
							var user_img = $("<img class='user_img' src='../last_project/img/user.jpg'>");
							var report = $("<button onclick='report($(this));' data-email='"+this.review_email+"' data-num='"+this.num+"'>신고하기</button>");
							review_writer.append(span_star);
							review_balloon.append(review_writer,content,review_update_date);
							review_box.append(user_img,review_balloon,report);
							$(".book_info_li").append(review_box);
							var star_point=this.star_point;          
							span_star.children('i').each(function () { //'fa-star-half-o' 'fa-star'
							$(this).addClass($(this).index()<star_point?star_point/($(this).index()+1)<1?'fa-star-half-o':'fa-star':'fa-star-o' );
							})
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
					$('.book_info_table').show();
					$('.screen').show();	
			}
		});
		
		
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
						var report = $("<button onclick='report($(this));' data-email='"+this.review_email+"' data-num='"+this.num+"'>신고하기</button>");
						review_balloon.append(review_writer,content,review_update_date);
						review_box.append(user_img,review_balloon,report);
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
		
		
		
	</script>
</body>
</html>

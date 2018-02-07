<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../last_project/css/header.css">
<link rel="stylesheet" href="../last_project/css/reset.css">
<link rel="stylesheet" href="../last_project/css/notosanskr.css">

<title>Insert title here</title>
<style>
	.wrap{
		position:absolute;
		top:100px;
		width:220px;
		height:500px;
		background:  rgb(255, 56, 46);
		text-align: center;
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
	}
	.book_info_table{
		position: fixed;
		top: 50%;
		left: 50%;
		border:1px solid black;
		background:white;
		width: 800px;
		height: 700px;
		margin-top: -351px;
		margin-left: -401px;
		display: none;
		z-index: 1;
	}
	.screen{
		position:fixed;
		width: 10000px;
		height: 10000px;
		background: rgba(200,200,200,.5);
		display: none;
	}
</style>
</head>
<body>
<%@ include file="/template/header.jsp" %>
<div class="wrap">
	<h4>베스트셀러 랭킹</h4>
	<div>
			<ol>
				<c:forEach var="bestBook" items="${bookRanking}">
					<li class="best_book_list" data-title="${bestBook.title}">
						<a href="#"><span>${bestBook.num}</span>${bestBook.title}</a>
					</li>
				</c:forEach>
			</ol>
	</div>
		<div class="book_info_table">
			<div class="book_info_wrap">
				<div class="title">제목</div>
				<div class="book_writer">작가</div>
				<img class="cover" alt="" src="">
				<span style="display: inline-block; width: 14px; height: 13px; background: url(&quot;https://d3sz5r0rl9fxuc.cloudfront.net/assets/stars/star_H.gray_1-2502b64644c5146129a92d5849112b08e460a5c3ca270048e8d708edf5d115fe.png&quot;) 0px 0px / 14px 13px no-repeat;"></span>
				<span style="display: inline-block; width: 14px; height: 13px; margin-left: 1px; background: url(&quot;https://d3sz5r0rl9fxuc.cloudfront.net/assets/stars/star_gray-ab3f922b9014d6e60902dec1d93ae5493f36f7f37971c6791be64c56d903ef63.png&quot;) 0px 0px / 14px 13px no-repeat;"></span>
			</div>
		</div>
</div>
<div class="screen">
	
</div>
<script type="text/javascript" src="../last_project/js/jquery.js"/></script>
<script>
	var list = $('.best_book_list');
	list.click(function() {
		
		var q = "";
			q = $(this).data('title');
		function getUsers() {
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
						var cover = $('.cover');
						title.text(this.title);
						bookWriter.text(this.book_writer);
						cover.attr('src',this.image);
						cover.attr('alt',this.title+'의 커버 사진');
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
		cover.attr('alt','');
		cover.attr('src','');
	});
</script>
</body>
</html>
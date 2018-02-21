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
<link rel="stylesheet" href="../letsnotbeliketaesu/css/font-awesome.min.css">
<title>책 읽으실?</title>
<style>
	body{
		background: #E5E5E5;
	}
	.book_container{
		width: 220px;
		height: 314px;
		background-repeat: no-repeat;
		background-size: cover;
		position: relative;	
		overflow: hidden;
	}
	.book_title{
		height: 40px;
    	line-height: 40px;
    	font-size: 14px;
    	color: #403f4e;
    	border-bottom: 1px solid #F3F3F5;
    	overflow: hidden;
	}
	.book_pubdate{
		
	}
	.book_wrap{
		width: 1500px;
		position:relative;
		top:150px;
		margin: auto;
	}
	.book_wrap li{
		float:left;
		width: 220px;
		height: 314px;
		margin-left: 50px;
		margin-bottom: 150px;
	}
	.book_info{
		width: 220px;
		height: 157px;
		position: absolute;
		bottom: 0;
		background: #FFFFFF;
		text-align: center;
		transition:0.3s ease;
	}
			transform: translateY(157px);
	.book_container:hover .book_info{
		transform: translateY(0px);
	}
	.heart{
		font-size: 12px;
    	position: absolute;
   		text-indent: 24px;
    	line-height: 13px;
    	top:70px;
    	left: -25px;
	}
	.heart_icon{
		cursor: pointer;
	}
	.heart_icon:hover{
		color: 
	}
	
	.comment{
		font-size: 12px;
    	position: absolute;
   		text-indent: 24px;
    	line-height: 13px;
    	cursor: pointer;
    	top:70px;
    	right: 0px;
	}
</style>
</head>
<body>
<%@ include file="/template/header.jsp" %>
<ul class="book_wrap">
		<c:forEach var="book"  items="${searchBookList}">
			<li>
				<div class="book_container" style="background-image: url('${book.image}');">
					<div class="book_info">
						<div class="book_title">${book.title}</div>
						<div class="heart"><i class="heart_icon" class="fa fa-heart"></i><span>보고 싶어요!</span></div>
						<div class="comment"><i class="fa fa-comment"></i><span>코멘트 쓰기</span></div>
						<div class="book_pubdate">${book.public_date}</div>
					</div>
				</div>
			</li>
		</c:forEach>
</ul>
	<script type="text/javascript" src="../letsnotbeliketaesu/js/jquery.js"/></script>
	<script type=""></script>
</body>
</html>
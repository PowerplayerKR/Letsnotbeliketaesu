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
	
</style>
</head>
<body>
<h1 class="title" data-title ="${book.title}">${book.title}</h1>
<button class="btn">눌렁</button>
<%@ include file="/template/header.jsp" %>
<div class="wrap">
	<h4>베스트셀러 랭킹</h4>
	<div>
			<ol>
				<c:forEach var="bestBook" items="${bookRanking}">
					<li>
						<a href="#"><span>${bestBook.num}</span>${bestBook.title}</a>
					</li>
				</c:forEach>
			</ol>
	</div>
</div>
<div>
	
</div>
<script type="text/javascript" src="<c:url value="../last_project/js/jquery.js"/>"></script>
<script>
	var title = $('.title').data('title');
	var $btn = $(".btn");
	$btn.click(function() {
		var $loader = $("#loader");
		
		var $q = $("#q");
		
		var q = "";//기본값 비우기
		
		
		$q.keyup(function() {
			//전역변수 q의 값을 변경
			q = $q.val();
			getUsers();
		});//keyup() end

		
		function getUsers() {
			
			$.ajax({
				url:"getBook.do",
				type:"post",//post방식
				dataType:"json",//json
				data:{"q":q},//넘어가는 파라미터
				error:function(){
					alert("에러!!");
				},
				success:function(json) {
					$("tbody").empty();
					
					$(json).each(function() {
						
						var $tr = $("<tr>");
						
						var $td1 = $("<td>").text(this.no);
						var $td2 = $("<td>").text(this.name);
						var $td3 = $("<td>").text(this.id);
						$tr.append($td1,$td2,$td3);
						
						$tr.appendTo("tbody");	
						
					});//each() end
				}//success end
				
			});//$.ajax() end
			
		}//getUsers() end
		
		getUsers();
	});
</script>
</body>
</html>
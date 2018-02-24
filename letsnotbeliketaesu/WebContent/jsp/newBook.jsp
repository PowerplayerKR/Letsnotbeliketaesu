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
<link rel="stylesheet" href="../last_project/css/font-awesome.min.css">
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
		transition:0.5s ease;
		transform: translateY(157px);
	}
	.book_container:hover .book_info{
		transform: translateY(0px);
	}
	.book_container:hover::before {
		content: "";
		width: 220px;
		height: 314px;
		position: absolute;
		display: block;
		transition: .5s ease;
		background: rgba(0, 0, 0, .7)
	}
	.wish_btn {
		left: 20px;
	}
	.wish_btn:hover {
		color: hotpink;
	}
	.comment_btn {
		right: 0px;
	}
	.comment_btn:hover {
		color: #4DB6AC;
	}
	button {
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
</style>
</head>
<body>
<jsp:include page="/template/header.jsp"></jsp:include>
<ul class="book_wrap">
		<c:forEach var="book"  items="${newBookList}">
			<li class="scrolling" data-num="${book.num}">
				<div class="book_container" style="background-image: url('${book.image}');">
					<div class="book_info">
						<div class="book_title">${book.title}</div>
						<button class="wish_btn"><i class="fa fa-heart"></i>보고싶어요</button>
						<button class="comment_btn"><i class="fa fa-comment"></i> 코멘트쓰기</button>
						<div class="book_pubdate">${book.public_date}</div>
					</div>
				</div>
			</li>
		</c:forEach>
</ul>
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
	            // 4. ajax를 이용하여 현재 뿌려진 게시글의 마지막 bno를 서버로 보내어 그 다음 20개의 게시물 데이터를 받아온다.
	            $.ajax({
	                type : 'post',  // 요청 method 방식
	                url : 'newBookMore.do',
	                dataType : 'json', // 서버로부터 되돌려받는 데이터의 타입을 명시하는 것이다.
	                data : {"num":lastNum},
	                success : function(data){// ajax 가 성공했을시에 수행될 function이다. 이 function의 파라미터는 서버로 부터 return받은 데이터이다.
	                    // 5. 받아온 데이터가 ""이거나 null이 아닌 경우에 DOM handling을 해준다.
	                    if(data != ""){
	                        //6. 서버로부터 받아온 data가 list이므로 이 각각의 원소에 접근하려면 each문을 사용한다.
	                        $(data).each(
	                            // 7. 새로운 데이터를 갖고 html코드형태의 문자열을 만들어준다.
	                            function(){
	                                console.log(this);
	                                var li = $("<li class='scrolling' data-num='"+this.num+"'>");
	                                
	                                var book_container = $("<div class='book_container' style=\"background-image: url('"+this.image+"');\">");
	                                
	                                var book_info = $("<div class='book_info'>");
	                                
	                                var book_title = $("<div class='book_title'>").text(this.title);
	                                var book_pubdate = $("<div class='book_pubdate'>").text(this.public_date);
	                                
	                                var wish_btn = $("<button class='wish_btn'>");
	                                var fa_heart = $("<i class='fa fa-heart'>");
	                                
	                                var comment_btn = $("<button class='wish_btn'>");
	                                var fa_comment = $("<i class='fa fa-comment'>");
	                                
	                                var wish = wish_btn.append(fa_heart).text("보고싶어요");
	                                var comment = comment_btn.append(fa_comment).text(" 코멘트쓰기");
	                                
	                               	var info = book_info.append(book_title,wish,comment,book_pubdate);
	                               	
	                               	var container = book_container.append(info);
	                               	
	                               	var book_li = li.append(container);
	                               	
	                               	$(".book_wrap").append(book_li);
	                        });// each
	                    }// if : data!=null
	                }// success
	            });// ajax
	        }//if : 현재 스크롤의 top 좌표가  > (게시글을 불러온 화면 height - 윈도우창의 height) 되는 순간
	        // lastScrollTop을 현재 currentScrollTop으로 갱신해준다.
	        lastScrollTop = currentScrollTop;
	    }// 다운스크롤인 상태
	});
</script>
</body>
</html>
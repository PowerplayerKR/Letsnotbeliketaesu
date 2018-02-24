<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../last_project/css/header.css">
<link rel="stylesheet" href="../last_project/css/reset.css">
<link rel="stylesheet" href="../last_project/css/notosanskr.css">
<link rel="stylesheet" href="../last_project/css/font-awesome.min.css">
<title>베스트 셀러</title>
<style>
    body{
        background: #E5E5E5;
    }
    .book_wrap{
        position:relative;
        width: 960px;
        margin: auto;
        top:150px;
    }
    .book_img{
        width: 220px;
        height: 314px;
        float: left;
        background-size: cover;
        background-repeat: no-repeat;
    }
    .book_info{
        width: 680px;
        height: 314px;
        float: left;
        background: #FFFFFF;
    }
    .book_info_wrap{
        width: 902px;
        height: 314px;
        margin-bottom: 30px;
    }
    .book_title{
        margin: 6px 0 16px 0;
        position: relative;
        display: inline-block;
        padding-right: 30px;
        height: 40px;
        line-height: 40px;
        font-size: 14px;
        color: #403f4e;
        overflow: hidden;
    }
    .detail-info{
        height: 95px;
        margin: 20px 0;
        font-size: 13px;
        color: #93939c;
    }
    .book_introduce{
        margin: 0;
        padding: 0;
        border: 0;
        font: inherit;
        font-size: 100%;
        vertical-align: baseline;
    }
    .writer{
        margin: 0;
        padding: 0;
        border: 0;
        font: inherit;
        font-size: 100%;
        vertical-align: baseline;
    }
    .book_title_link{
        font-size: 24px;
        color: #403f4e;
        display: inline-block;
        max-width: 520px;
    }
    .book_publisher{
        font-size: 14px;
        color: #6d6c83;
        padding-bottom: 20px;
        border-bottom: 1px solid #EEEEEF;
    }
    .writer{
        margin-top: 30px;
        padding: 0;
        border: 0;
        font: inherit;
        vertical-align: baseline;
        font-size: 13px;
        color: #93939c;

    }
    .pub_date{
        margin-top: 10px;
        padding: 0;
        border: 0;
        font: inherit;
        vertical-align: baseline;
        font-size: 13px;
        color: #93939c;
    }
</style>
</head>
<body>
<jsp:include page="/template/header.jsp"></jsp:include>
<div class="book_wrap">
	<c:forEach var="book"  items="${bestBookList}">
    <div class="book_info_wrap" data-num="${book.num }">
        <div style="background-image: url('${book.image}');" class="book_img"></div>
        <div class="book_info">
            <h5 class="book_title"><a class="book_title_link">${book.title }</a></h5>
            <div class="book_publisher">
                <span>출판사 : ${book.publisher }</span>
            </div>
            <div class="detail-info">
                <div class="book_introduce">${book.introduce}</div>
                <div class="writer">
                    작가 : <span>${book.book_writer }</span>
                </div>
                <div class="pub_date">
                    출판일 : ${book.public_date}
                </div>
            </div>
        </div>
     </div>
</c:forEach>
</div>

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
	            var lastNum = $(".book_info_wrap:last").attr("data-num");
	            // 4. ajax를 이용하여 현재 뿌려진 게시글의 마지막 bno를 서버로 보내어 그 다음 20개의 게시물 데이터를 받아온다.
	            $.ajax({
	                type : 'post',  // 요청 method 방식
	                url : 'bestBookMore.do',
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
	                                var book_info_wrap = $("<div class='book_info_wrap' data-num='"+this.num+"'>");
	                                
	                                var book_img = $("<div class='book_img' style=\"background-image: url('"+this.image+"');\">");
	                                
	                                var book_info = $("<div class='book_info'>");
	                                
	                                var book_title_link = $("<a class='book_title_link'>").text(this.title);
	                                var book_title = $("<h5 class='book_title'>");

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
									
	                                var bookInfo = book_info_wrap.append(book_img,info);
	                                
	                                $(".book_wrap").append(bookInfo);
	                                
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
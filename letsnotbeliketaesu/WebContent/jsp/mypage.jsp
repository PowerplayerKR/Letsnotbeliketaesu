<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/notosanskr.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css">

<title>느그페이지</title>
<style>
#top {
	width: 1200px;
	height: 300px;
	background-color: green;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -500px 0 0 -600px;
}

#trademark {
	width: 100px;
	height: 100px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -500px 0 0 -600px;
}

#user {
	width: 200px;
	height: 200px;
	position: absolute;
	top: 50%;
	left: 50%;
	border-radius: 100px;
	margin: -450px 0 0 -100px;
}

#best {
	width: 110px;
	height: 110px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -480px 0 0 -480px;
	text-decoration: none;
	color: #646464;
}

#recommendation {
	width: 110px;
	height: 110px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -480px 0 0 -380px;
	text-decoration: none;
	color: #646464;
}

#evaluation {
	width: 110px;
	height: 110px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -480px 0 0 -310px;
	text-decoration: none;
	color: #646464;
}

#see {
	width: 110px;
	height: 30px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -200px 0 0 -530px;
	text-decoration: none;
	color: #646464;
}

#saw {
	width: 110px;
	height: 30px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -200px 0 0 -430px;
	text-decoration: none;
	color: #646464;
}

#comment {
	width: 110px;
	height: 30px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -200px 0 0 -360px;
	text-decoration: none;
	color: #646464;
}

#interested {
	width: 110px;
	height: 30px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -200px 0 0 -310px;
	text-decoration: none;
	color: #646464;
}

#songeunBar {
	width: 80px;
	height: 5px;
	background-color: #DBA901;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -177px 0 0 -530px;
}
  .info_box {
            width: 220px;
            height: 170px;
            position: absolute;
            top: 170px;
            left: 0;
            background: #fff;
            transform: translateY(340px);
            transition: .3s ease;
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

        li:hover .info_box {
            transform: translateY(0px);
        }

        li:hover {
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0 rgba(0, 0, 0, 0.19);
        }

        li:nth-child(7) button {
            top: 70px
        }

        li:hover::before {
            content: "";
            width: 220px;
            height: 314px;
            position: absolute;
            display: block;
            transition: .5s ease;
            background: rgba(0, 0, 0, .7)
        }

</style>
</head>
<body>
	<div id="header">
		<p id="top"></p>
		<img id="trademark" src="small_g_in.png"> <a id="best" href="#">베스트셀러</a>
		<a id="recommendation" href="#">책 추천</a> <a id="evaluation" href="#">책
			평가 늘리기</a> <img id="user" src="20579b468d77bf2.jpg">
	</div>
	  <li>
                    <a href="#">
                        <div class="info_box">
                            <h3>명탐정 코난: 진홍의 연가</h3>
                            <button class="wish_btn">
                                <i class="fa fa-heart"></i> 보고싶어요</button>
                            <button class="comment_btn">
                                <i class="fa fa-comment"></i> 코멘트쓰기</button>
                        </div>
                        
			<c:forEach items="${list }" var="list">
				<img src="${list.image }">
		</c:forEach> </a>
                </li>
	<div id="content">
		<a id="see" href="#">보고싶어요</a> <a id="saw" href="#">봤어요</a> 
		<a></a>
		<a
			id="comment" href="#">댓글</a> <a id="interested" href="#">관심없어요</a>
		<p id="songeunBar"></p>
		
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="header">
	<ul>
		<li>
			<h1>
				<a href="main.do" class="logo"> <img src="logo.jpg"
					alt="lnblt logo" style="width: 48px; height: 48px">
				</a>
			</h1>
		</li>
		<li><a href="bestBook.do">베스트 셀러</a></li>
		<li><a href="newBook.do">신간</a></li>
		<li><a href="recommended.do">책 추천</a></li>
		<li class="search">
			<form action="bookSearch.do">
				<select name="searchOption" id="">
					<option value="title" <c:if test="${search.searchOption eq 'title' }">selected</c:if> >제목</option>
					<option value="writer"<c:if test="${search.searchOption eq 'writer' }">selected</c:if> >작가</option>
					<option value="publisher" <c:if test="${search.searchOption eq 'publisher' }">selected</c:if>  >출판사</option>
				</select>
				<input type="search" name="keyword" id="search" placeholder="검색"
					style="width: 500px; line-height:normal !important;"> 
					<input type="submit" value="${search.keyword}">  style="line-height:normal !important;" value="검색하기">
			</form>
		</li>
	</ul>
	<div id="user">
			${userInfo.name }	
		<img src="logo.jpg" alt="name's img"
			style="height: 48px; width: 48px;"> <a href="mypage1.do">마이페이지</a>
	</div>
</div>

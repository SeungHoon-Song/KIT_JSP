<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>이벤트 모아 (Event Moa)</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/search.css">
	
	<style>
	@media screen and (max-width: 375px){
		.searchTerm {
			width: 100%;
			inline-size: auto;
		}
		.fa-search {
			width: 100%;
			margin-top: 5%;	
		}
		#searchIcon{ 
			display: none;
		}
		#searchIcon2{
			display: block;
		}
		
	}
	@media screen and (min-width: 376px) {
		#searchIcon2{
			display: none;
		}
	}
	</style>
</head>
	<body>
	<c:set var="keyword" value="${keyword}"/>
		
		<!--  logo -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
	
		<!-- search-bar -->
	<form action="${pageContext.request.contextPath}/search/search.us" name="searchForm" id="search" method="post">
			<div class="search">
			<select name="category" class="button primary icon solid fa-search" id="category" 
			style="margin: 0 auto; width: 40%; border-radius: initial;">
				<option value="select">- 지역별 -</option>
				<option value="seoul">		서울		</option>
				<option value="busan">		부산		</option>
				<option value="daegu">		대구		</option>
				<option value="gwanju">		광주		</option>
				<option value="incheon">	인천		</option>
				<option value="daejeon">	대전		</option>
				<option value="ulsan">		울산		</option>
				<option value="gyeonggi">	경기		</option>
				<option value="gangwon">	강원		</option>
				<option value="gyeongbuk">	경북		</option>
				<option value="gyeongnam">	경남		</option>
				<option value="chungbuk">	충북		</option>
				<option value="chungnam">	충남		</option>
				<option value="jeju">		제주		</option>
                </select>
				<input type="search" name="keyword" class="searchTerm searchBar" placeholder="검색어를 입력하세요"
				style="border-radius: initial; height: 39px;">
				<a href="javascript:searchForm.submit();" id="searchIcon" 
				class="button primary icon solid fa-search"
				style="border-radius: initial;"> Search</a>
				<a href="javascript:searchForm.submit();" id="searchIcon2"
				class="fas fa-search"></a>
			</div>
	</form>
	<br>
	<div class="hashTags" style="text-align: center;">
        <a href="javascript:;" class="hashTag">#서울</a>
        <a href="javascript:;" class="hashTag">#경기</a>
        <a href="javascript:;" class="hashTag">#강원</a>
        <a href="javascript:;" class="hashTag">#경북</a>
        <a href="javascript:;" class="hashTag">#경남</a>
        <a href="javascript:;" class="hashTag">#충북</a>
        <a href="javascript:;" class="hashTag">#충남</a>
        <a href="javascript:;" class="hashTag">#제주</a>
     </div>
		<p></p>

	</body>
</html>
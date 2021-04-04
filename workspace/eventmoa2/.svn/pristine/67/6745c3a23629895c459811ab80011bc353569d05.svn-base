<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
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
		}
		
	}
	</style>
</head>

	<body>

		
		<!--  logo -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
	
		<!-- search-bar -->
	<form action="${pageContext.request.contextPath}/search/" name="searchForm" id="search" method="post">
			<div class="search">
			<select name="category" class="button primary icon solid fa-search" id="category" 
			style="margin: 0 auto; width: 40%; border-radius: initial;">
                    <option value="select">- 지역별 -</option>
                    <option value="alpha">서울</option>
                    <option value="beta">경기</option>
                    <option value="gamma">강원</option>
                    <option value="delta">경북</option>
                    <option value="epsilon">경남</option>
                    <option value="eta">충북</option>
                    <option value="zeta">충남</option>
                    <option value="theta">제주</option>
                </select>
				<input type="search" class="searchTerm" placeholder="검색어를 입력하세요"
				style="border-radius: initial; height: 39px;">
				<a href="#" class="button primary icon solid fa-search"
				style="border-radius: initial;"> Search</a>
			</div>
	</form>
	<br>
	<div class="" style="text-align: center;">
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
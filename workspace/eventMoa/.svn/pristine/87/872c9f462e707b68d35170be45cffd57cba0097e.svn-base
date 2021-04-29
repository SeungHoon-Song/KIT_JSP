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
				<option value="지역별">- 지역별 -</option>
				<option value="서울">		서울		</option>
				<option value="부산">		부산		</option>
				<option value="대구">		대구		</option>
				<option value="광주">		광주		</option>
				<option value="인천">		인천		</option>
				<option value="대전">		대전		</option>
				<option value="울산">		울산		</option>
				<option value="경기">		경기		</option>
				<option value="강원">		강원		</option>
				<option value="경북">		경북		</option>
				<option value="경남">		경남		</option>
				<option value="충북">		충북		</option>
				<option value="충남">		충남		</option>
				<option value="제주">		제주		</option>
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
        <a href="${pageContext.request.contextPath}/search/search.us?category=서울" class="hashTag">#서울</a>
        <a href="${pageContext.request.contextPath}/search/search.us?category=경기" class="hashTag">#경기</a>
        <a href="${pageContext.request.contextPath}/search/search.us?category=강원" class="hashTag">#강원</a>
        <a href="${pageContext.request.contextPath}/search/search.us?category=경북" class="hashTag">#경북</a>
        <a href="${pageContext.request.contextPath}/search/search.us?category=경남" class="hashTag">#경남</a>
        <a href="${pageContext.request.contextPath}/search/search.us?category=충북" class="hashTag">#충북</a>
        <a href="${pageContext.request.contextPath}/search/search.us?category=충남" class="hashTag">#충남</a>
        <a href="${pageContext.request.contextPath}/search/search.us?category=제주" class="hashTag">#제주</a>
     </div>
		<p></p>

	</body>
	<script> 
switch(){
case "#서울" :
    document.write();
    break;
case "#경기" :
    document.write();
    break;
case "#강원" :
    document.write();
    break;
case "#경북" :
      document.write();
      break;
case "#경남" :
    document.write();
    break;
case "#충북" :
    document.write();
case "#충남" :
    document.write();
case "#제주" :
    document.write();
    break;
}
	</script>
	<script>
	
	</script>
	
</html>
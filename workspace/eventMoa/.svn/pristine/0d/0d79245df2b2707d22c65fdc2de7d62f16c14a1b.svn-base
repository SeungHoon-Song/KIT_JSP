<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이벤트 모아 (Event Moa)</title>
		
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		
		<!-- title-icon -->
		<!-- style -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slick.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/search.css">
	</head>
	<body class="is-preload">
	
	<c:set var="login" value="${login}"/>
	<c:set var="session_id" value="${session_id}"/>
	<c:set var="user_AddressAll" value="${user_AddressAll}"/>
	      
	<c:set var = 'userStatus' value = "false"></c:set>
	<c:if test="${session_id ne null }">
		<c:set var = 'userStatus' value = 'true'/>
	</c:if>
		<!-- Header -->
			<div id="header" class="alt">
				<a class="logo" href="${pageContext.request.contextPath}/main.us"></a>
				<nav id="nav">
					<ul>
						<li class="active"><a href="${pageContext.request.contextPath}/main.us">메인</a></li>
						<li>
							<a href="${pageContext.request.contextPath}/Event/mainEvent.jsp">이벤트</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/Event/nowEvent.jsp">진행 이벤트</a></li>
								<li><a href="${pageContext.request.contextPath }/Event/futureEvent.jsp">예정 이벤트</a></li>
								<li><a href="${pageContext.request.contextPath }/Event/pastEvent.jsp">종료 이벤트</a></li>
							</ul>
						</li>
					<c:if test="${userStatus eq false}">
						<li><a href="${pageContext.request.contextPath}/user/UserLogin.us">계정</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/user/UserLogin.us">로그인</a><li>
								<li><a href="${pageContext.request.contextPath}/user/UserJoin.us">회원가입</a><li>
							</ul>
						</li>
					</c:if>
					<c:if test="${userStatus eq true}">
						<li><a href="${pageContext.request.contextPath}/mypage/myPage.us">마이페이지</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/user/mypage/MyPageInfo.us">회원정보수정</a><li>
								<li><a href="${pageContext.request.contextPath}/user/mypage/myWrite.jsp">내가 쓴 글</a><li>
								<li><a href="${pageContext.request.contextPath}/user/mypage/myReply.jsp">내가 쓴 댓글</a><li>
								<li><a href="${pageContext.request.contextPath}/user/mypage/pointReceipt.jsp">결제 내역</a><li>
								<li><a href="${pageContext.request.contextPath}/user/UserLogin.us" class="button small">로그아웃</a><li>
							</ul>
						</li>
					</c:if>
						<li><a href="${pageContext.request.contextPath}/user/mypage/pointCharge.jsp">포인트💎</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/user/mypage/pointCharge.jsp">포인트 충전소</a><li>
							</ul>
						</li>
						<li><a href="${pageContext.request.contextPath}/community/freeTalk.jsp">커뮤니티</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/community/freeTalk.jsp">자유게시판</a><li>
								<li><a href="${pageContext.request.contextPath}/community/reviews.jsp">인증후기</a><li>
							</ul>
						</li>
					</ul>
				</nav>
				<div class="navSearch" style="width: 50%;text-align: right;margin: 0 auto;padding-left: 0;margin-left: 0;padding-right: 20%;">
					<input type="search" class="searchTerm" placeholder="검색어를 입력하세요"
					style="border-radius: initial; height:30px; ">
					<a href="${pageContext.request.contextPath}/searchViewPage.jsp" class="fas fa-search"></a>
				</div>
			</div>

			
</body>
</html>
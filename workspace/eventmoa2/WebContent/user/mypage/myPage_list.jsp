<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>마이페이지 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<style>
		@media screen and (max-width: 480px) {
			ul.actions:not(.fixed) li .button {
   			width: 80%;
    		padding-left: 20%;
			}
		}
		</style>
	</head>
	
	<body class="is-preload">
		<c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용해주세요");
            location.replace("${pageContext.request.contextPath}/main.us");
         </script>
      </c:if>
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
		
		<!-- Main -->
		<div id="main">
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
			<form name="myPage" action="" method="post">
			<div style="text-align: center;">
				<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px;">포인트 결제</h1><span style="color: black; font-size: 18px;">💎현재 잔여 포인트 :</span> 
					<span style="font-family: 'jua'; font-size: 15px;">${user_Point}p</span>
				<div class="col-6 col-12-medium" style="margin: 0 0 -2em 0;">
        			<ul class="actions" style="display: inline-flex;">
						<li><a href="${pageContext.request.contextPath}/pointCharge.us" class="button" style="display: flex; margin: 0 auto;">
						<img src="${pageContext.request.contextPath}/images/user/point.png" style="width: auto;">　포인트 충전소</a></li>
						<li><a href="${pageContext.request.contextPath}/user/mypage/pointReceipt.us" class="button" style="display: flex; margin: 0 auto;">
						<img src="${pageContext.request.contextPath}/images/user/receipt.png" style="width: auto;">　포인트 결제내역</a></li>
					</ul>
				</div>
				<hr style="width: 80%; margin-inline: auto;">
        		<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px;">나의 활동</h1>
        		<div class="col-6 col-12-medium" style="margin: 0 0 -2em 0;">
        			<ul class="actions" style="display: inline-flex;">
						<li><a href="${pageContext.request.contextPath}/user/mypage/UserFreeBoardListOk.us" class="button" style="display: flex; margin: 0 auto;">
						<img src="${pageContext.request.contextPath}/images/user/board.png" style="width: auto;">　내가 쓴 글　　</a></li>
						<li><a href="${pageContext.request.contextPath}/user/mypage/UserFreeBoardReplyListOk.us" class="button" style="display: flex; margin: 0 auto;">
						<img src="${pageContext.request.contextPath}/images/user/comment.png" style="width: auto;">　내가 쓴 댓글　</a></li>
					</ul>
				</div>
				
				<hr style="width: 80%; margin-inline: auto;">
				<h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px;">회원 정보</h1>
				<div class="col-6 col-12-medium" style="margin: 0 0 -2em 0;">
        			<ul class="actions" style="display: inline-flex;">
						<li><a href="${pageContext.request.contextPath}/user/mypage/MyPageInfo.us" class="button primary fit" style="display: flex; margin: 0 auto;">
						<img src="${pageContext.request.contextPath}/images/user/edit2.png" style="width: auto;">　회원정보 수정</a></li>
						<li><a href="${pageContext.request.contextPath}/user/mypage/UserDeleteAccountOk.us" class="button primary fit" style="display: flex; margin: 0 auto;">
						<img src="${pageContext.request.contextPath}/images/user/remove2.png" style="width: auto;">　회원 탈퇴　　　</a></li>
					</ul>
				</div>							
				
				
				</div>
			</form>
			
			

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
</html>
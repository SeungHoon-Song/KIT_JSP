<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>로그인 | 이벤트 모아(Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
	</head>
	<body class="is-preload">
	
		<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
<div id="main">


	<c:set var="login" value="${login}"/>
	<c:set var="session_id" value="${session_id}"/>

	<c:set var = 'userStatus' value = "false"></c:set>
		<c:if test="${param.login eq 1 }">
			<c:set var = 'userStatus' value = 'true'></c:set>
		</c:if>
		<c:if test="${param.login eq 0 }">
			<script>
				alert('아이디 또는 비밀번호가 틀립니다. 다시 확인 하시길 바랍니다.');
			</script>
		</c:if>
		
				<!-- Header -->
				<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
				
				<c:if test="${userStatus eq false}">
						<div class="login_message">
							<h1>로그인이 필요한 서비스 입니다.</h1>
							<br>
							<p>이벤트모아 회원이 아니면, 지금 "
								<span>
									<a href="${pageContext.request.contextPath}/user/UserJoin.us" style="color: blue;">회원가입</a>
								</span>
								"을 해주세요.
							</p>
						</div>
				<!-- Content -->
				
			<form name="loginForm" action="${pageContext.request.contextPath}/user/UserLoginOk.us" method="post">
				<div class="row gtr-uniform" id="loginFrame">
					<div class="col-12">
							<label for="user_Id">아이디</label> 
							<input type="text" name="user_Id" id="user_Id"/>
							
							<label for="user_Pw">비밀번호</label> 
							<input type="password" name="user_Pw" id="user_Pw"/>
								
							<p class="signup-forgotten">
								<a href="${pageContext.request.contextPath}/user/UserJoin.us" class="sign-up" style="font-weight: bold;">회원가입</a>
								<span></span>
								<a href="${pageContext.request.contextPath}/user/findIdPw.jsp" class="forgotten">아이디/비밀번호 찾기</a>
							</p>
							
						<div class="col-6 col-12-medium">
							<ul class="actions stacked">
								<li>
								  <input type="submit" value="로그인" class="button primary fit"/>
								</li>
							</ul>
							<div>
								<img src="${pageContext.request.contextPath}/images/banner/ADbanner2.jpg" alt="광고배너1" onclick="">
							</div>
							<div>
								<img src="${pageContext.request.contextPath}/images/banner/ADbanner1.jpg" alt="광고배너2" onclick="">
							</div>
						</div>
					</div>
					
				</div>
			</form>
			</c:if>
				<c:if test="${userStatus eq true}">
				<div class="row gtr-uniform" id="loginFrame">
					<div class="col-12">
						<p>${param.session_id}님 환영합니다!</p>
						<p><a href="UserLogout.us" class="button primary fit">로그아웃</a></p>
					</div>
				</div>
				</c:if>
</div>
				


	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

	</body>
</html>